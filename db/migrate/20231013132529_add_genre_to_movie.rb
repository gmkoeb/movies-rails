class AddGenreToMovie < ActiveRecord::Migration[7.0]
  def change
    add_reference :movies, :genres, null: false, foreign_key: true, default:0
  end
end
