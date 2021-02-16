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

    def login 
        login_user = User.find_by(email: params[:email])
            if (login_user && login_user.authenticate(params[:password]))
                token = JWT.encode(
                    {user_id: login_user.id},
                    'so_secret', 'HS256')
                render json: {user: UserSerliaizer.new(login_user), token:token}
            else 
                render json: {message: 'Invalid username or password'}, status: :unauthorized
            end
    end

    def autologin
        auth_header = request.headers['Authorization']
        #get token from the headers 
        token = auth_header.split(' ')[1]
        #decode token using JWT library 
        decoded_token = JWT.decode(token, 'so_secret', true, {algorithm: 'HS256'})
        #get user id from the decoded token
        user_id = decoded_token[0]["user_id"]
        loggedInUser = User.find_by(id: user_id)
        if loggedInUser
            render json: loggedInUser, status: 200 
        else 
            render json: {message: "Not logged in"}, status: :unauthorized
    end

    private 
    def user_params
        params.permit(:name, :username,:email, :password, :phone)
        # missing profile pic
    end 

end
