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
        user = User.new(name: params[:name], username: params[:username], email: params[:email], phone: params[:phone], password: params[:password],profile_pic: Faker::Avatar.image)
       byebug
        if user.save
            token = JWT.encode({user_id: user.id}, 'so_secret', 'HS256')
            render json: {user: UserSerializer.new(user), token:token}
            byebug
        else render json: {error: user.errors.full_messages}, status: 400 
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
            render json: user, status: 200
        else 
            render json: {error: "Unable to delete user"}, status: 400
        end
    end 

    def login 
        # byebug
        login_user = User.find_by(email: params[:email])
        # byebug
            if (login_user && login_user.password == params[:password])
                # byebug
            # if (login_user && login_user.authenticate(params[:password]))
                token = JWT.encode(
                    {user_id: login_user.id},
                    'so_secret', 'HS256')
                render json: {user: UserSerializer.new(login_user), token:token}
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
    end

    private 
    def user_params
        params.permit(:name, :username,:email, :password, :phone, :profile_pic)
        # missing profile pic
    end 

end
