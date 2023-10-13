class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(title: params[:movie][:title], released_at: params[:movie][:released_at], 
                      synopsis: params[:movie][:synopsis], country: params[:movie][:country], 
                      duration: params[:movie][:duration], director: params[:movie][:director], genre_id: params[:movie][:genre_id])

    if @movie.save
      return redirect_to root_path
    end
    render :new
  end
end
