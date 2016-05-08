class SessionsController < ApplicationController
    
    skip_before_action :require_user
    
    def new
    end
    
    def create
        @user = User.find_by_email(params[:session][:email])
            #respond_to do |format|
                if @user && @user.authenticate(params[:session][:password])
                    session[:user_id] = @user.id
                    redirect_to users_path
                    # Tell UserMailer to send welcome email after save
                    #UserMailer.test_email(@user)
                    
                    #redirect_to @user - this sends to users/show - non existent
                    #format.html { redirect_to "/index", notice: "User created Successfully" }
                    #format.json { render json: @user, status: :created, location: @user }
                else
                    redirect_to "/"
                    #format.html { render "new" }
                    #format.json { render json: @user.errors, status: :unprocessable_entity }
                end
            #end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/login'
    end
    
end
