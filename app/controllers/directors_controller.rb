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
                            date_of_birth: params[:director][:date_of_birth], favorite_genre: params[:director][:genre])

    if @director.save
      return redirect_to directors_path
    end
    render :new
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(name: params[:director][:name], nationality: params[:director][:nationality], 
                    date_of_birth: params[:director][:date_of_birth], favorite_genre: params[:director][:genre])
      return redirect_to '/directors/details/' + @director.name
    end

    render :edit
  end
end
