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
    #    byebug
        if user.save
            token = JWT.encode({user_id: user.id}, 'so_secret', 'HS256')
            render json: {user: UserSerializer.new(user), token:token}
            # byebug
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
                auth_header = request.headers['Authorization']
                token = auth_header.split(' ')[1]
                decoded_token = JWT.decode(token, 'so_secret', true, {algorithm: 'HS256'})
                user_id = decoded_token[0]["user_id"]
        user = user.find(user_id)
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
        # byebug
        auth_header = request.headers['Authorization']
        #get token from the headers 
        # byebug
        token = auth_header.split(' ')[1]
        #decode token using JWT library 
        # byebug
        decoded_token = JWT.decode(token, 'so_secret', true, {algorithm: 'HS256'})
        # byebug
        #get user id from the decoded token
        user_id = decoded_token[0]["user_id"]
        # byebug
        logged_in_user = User.find_by(id: user_id)
        # byebug
        if logged_in_user
            render json: {user: UserSerializer.new(logged_in_user), token: token}, status: 200 
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
