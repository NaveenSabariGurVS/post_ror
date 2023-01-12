class PostController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        @posts = Post.all

        render json: @posts
    end

    def show
        @post = Post.find(params[:id])

        render json: @post
    end

    def create
        @post = Post.new(title:params[:title],description:params[:description])
        @post.save

        redirect_to @post
    end

    def update 
        @post = Post.find(params[:id])
        @post.title = params[:title] if !params[:title].empty?
        @post.description = params[:description] if !params[:description].empty?
        @post.save
        
        redirect_to @post
    end

    def destroy 
        @post = Post.find(params[:id])
        @post.destroy
        
        render json: {delete:"success"}
    end
end