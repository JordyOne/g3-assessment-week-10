class GifController < ApplicationController


  def new
    @gifs = Gif.new

  end

  def create
    @gif = Gif.create(title: params[:gif][:title], image_url: params[:gif][:image_url])
    if @gif.save
      flash[:notice] = "Gif created successfully!"

      redirect_to "/"
    else
      flash[:notice] = @gif.errors.full_messages.join(", ")
      render "gif/new"
    end
  end
end