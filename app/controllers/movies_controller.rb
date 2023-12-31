class MoviesController < ApplicationController
  def movies
    @movies = Movie.all
  end

  def movie
    @movie = Movie.where(title: params[:movie]).first
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(title: params[:movie][:title], released_at: params[:movie][:released_at], 
                      synopsis: params[:movie][:synopsis], country: params[:movie][:country], 
                      duration: params[:movie][:duration], director_id: params[:movie][:director_id], genre_id: params[:movie][:genre_id])

    if @movie.save
      return redirect_to root_path
    end
    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(title: params[:movie][:title], released_at: params[:movie][:released_at], 
      synopsis: params[:movie][:synopsis], country: params[:movie][:country], 
      duration: params[:movie][:duration], director_id: params[:movie][:director_id], genre_id: params[:movie][:genre_id])

      return redirect_to '/movies/details/' + @movie.title, allow_other_host: true
    end

    render :edit
  end
end
