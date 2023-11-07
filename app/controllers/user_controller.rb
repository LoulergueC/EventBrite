class UserController < ApplicationController
    before_action :authenticate_user!, only: [:show, :edit, :update]
    before_action :is_the_user?, only: [:show, :edit, :update]
    def show
        @user = User.find(params[:id])
        @events = @user.events
    end

    def edit
    end

    def update
        @user = User.find(params[:id])
        @user.first_name = params[:user][:first_name]
        @user.last_name = params[:user][:last_name]
        @user.description = params[:user][:description]

        if @user.save
            redirect_to user_path(@user), notice: "Your profile has been updated."
        else 
            render :edit, alert: "Something went wrong."
        end
    end

    private

    def is_the_user?
        @user = User.find(params[:id])

        if current_user != @user
            redirect_back fallback_location: root_path, alert: "You are not authorized to access this page."
        end
    end
end
