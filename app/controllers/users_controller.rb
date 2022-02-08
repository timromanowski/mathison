class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  
    # GET /users
    def index
      @users = User.all
  
      render json: users
    end
  
    # GET /users/1
    def show
      render json: @user
    end

    # POST /users/1/bookmark/1
    def 
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:user_id])
      end
  
      # Only allow a list of trusted parameters through.
      def page_params
        params.fetch(:page, {})
      end
  end
  