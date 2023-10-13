class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :released_at
      t.string :synopsis
      t.string :country
      t.integer :duration
      t.string :director
      t.string :genre

      t.timestamps
    end
  end
end
