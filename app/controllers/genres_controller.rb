class GenresController < ApplicationController
  def new
  end
  def create
    new_genre = Genre.new(name: params[:genre][:name])

    if new_genre.save
      return redirect_to root_path
    end
    render :new
  end
end
