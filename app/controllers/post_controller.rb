class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show  
        @post = Post.find(param[:id])
    end

    def edit
        @post = Post.find(param[:id])
    end

    def new
        @post = Post.new
    end

    def update 

    end

    def destroy 
        @post = Post.find(param[:id])
        
    end

    private 

end