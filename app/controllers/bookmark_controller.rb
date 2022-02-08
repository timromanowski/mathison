class PagesController < ApplicationController
    before_action :set_user

    # GET /class PagesController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  
    # GET /class PagesController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  
    # GET /users/:user_id/bookmark/:id
    def index
      @content = Content.find(params[:id])
      render json: @content unless !@user.bookmarks?(@content)
    end

    #POST /users/:user_id/bookmark
    def create
        @content = Content.find(params[:id])
        user.bookmark(@content)        
    end 
  
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
  