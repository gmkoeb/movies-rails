class FixGenreToMovieReference < ActiveRecord::Migration[7.0]
  def change
    remove_reference :movies, :genres, null: false, foreign_key: true, default:0
    add_reference :movies, :genre, null: false, foreign_key: true, default:0
  end
end
