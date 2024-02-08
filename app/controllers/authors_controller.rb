class AuthorsController < ApplicationController
  def create
    @author = Author.new(author: params[:author])
    if @user.save
      render json: @author
    else
      render json: {error: "Unable to create author."}
    end
    
    def index
      @authors = Author.all
      render json: @authors
    end

    def show
      @author = Author.find(params[:id])
      render json: @author
    end

    def update
      @author = User.find(params[:id])
      if @author.update(author: params[:author])
        render json: @author
      else
        render json: {error: "Unable to update author"}
      end
    end

    def destroy
      @author = Author.find(params[:id])
      if @author.destroy
        render json: {message:"Successfully deleted author"}
      else
        render json: {error:"Unable to delete author"}
      end
    end
end
