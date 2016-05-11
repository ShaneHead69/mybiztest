class UsersController < ApplicationController
    
    skip_before_action :require_user, only: [:newuser, :create]
    before_action :require_user, only: [:edit, :show, :update, :destroy]
    before_action :require_admin, only: [:index]
    
    # GET /users
    # GET /users.json
    def index
        @users = User.all
    end
    
    # GET /users/1
    # GET /users/1.json
    def show
        @user = @current_user
    end
    
    # GET /users/new
    def new
        @user = User.new
    end
    
    # GET /users/1/edit
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        #respond_to do |format|
            if @user.update_attributes(user_params)
                redirect_to users_path
            end
        #end
    end
    
    def create
        if @user.save
            session[:user_id] = @User.id
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    private
    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :role, :password)
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    
end
