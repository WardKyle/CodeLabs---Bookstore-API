class BooksController < ApplicationController
  def create
    @book = Book.new(author: params[:author], title: params[:title])
    if @book.save
      render json: @book
    else
      render json: {error: "Unable to create book"}
    end
  end
end
