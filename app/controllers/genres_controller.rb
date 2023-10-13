class GenresController < ApplicationController
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
