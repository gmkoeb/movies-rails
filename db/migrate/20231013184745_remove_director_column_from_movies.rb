class RemoveDirectorColumnFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :director, :string
  end
end
