class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create
        if @user.save
            session[:user_id] = @User.id
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end
    
    private
    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :role, :password)
    end
    
    
end
