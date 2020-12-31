class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:update]

    def index
        @users = User.all
        #allows us to render all users in json 
        render json: @users
      end
    
      def update
        @users.update(user_params)
        if @user.save
          render json: @user, status: :accepted
        else
          render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
        end
      end
    
      private
    
      #created new note instances 
      def user_params
        params.permit(:name, :recording_id)
      end
    
      def find_user
        @user = User.find(params[:id])
      end
end