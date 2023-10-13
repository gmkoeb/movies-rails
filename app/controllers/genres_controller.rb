class GenresController < ApplicationController
  def new
  end
  def create
    new_genre = Genre.new(name: params[:genre][:name])

    if new_genre.save
      redirect_to root_path
    else
      render :new
    end
  end
end
