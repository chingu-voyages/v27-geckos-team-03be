class UsersController < ApplicationController


    def index 
        users = User.all 
        render json: users
    end 

    def show 
        user = User.find(params[:id])
        render json: user 
    end

    def create 
        user = User.new(user_params)
        if user.save
        render json: user
        else render json: {error: 'Unable to create user'}, status: 400 
        end
    end 

    def update 
        user = User.find(params[:id])
        if user 
            user.update(user_params)
            render json: user,status: 200 
        else
            render json: {error: `Unable to update user`}, status: 400
        end
    end 

    def destroy 
        user = user.find(params[:id])
        if user 
            user.destroy
            render json: {error: "unable to delete user"}, status: 400
        else 
            render json: {error: "Unable to delete user"}, status: 400
        end
    end 

    private 
    def user_params
        params.permit(:name, :username,:email, :password, :phone)
        # missing profile pic
    end 

end
