class DirectorsController < ApplicationController
  def directors
    @directors = Director.all
  end

  def director
    @director = Director.where(name: params[:director]).first
    @movies = Movie.where(director_id: @director.id)
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(name: params[:director][:name], nationality: params[:director][:nationality], 
                            date_of_birth: params[:director][:date_of_birth], favorite_genre: params[:director][:genre],)

    if @director.save
      return redirect_to root_path
    end
    render :new
  end
end
