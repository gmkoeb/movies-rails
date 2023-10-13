class GenresController < ApplicationController
  def genres
    @genres = Genre.all
  end

  def genre
    @genre = Genre.where(name: params[:genre].capitalize).first
    @movies = Movie.where(genre_id: @genre.id)
  end
  
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])

    if @genre.save
      return redirect_to root_path
    end
    render :new
  end
end
