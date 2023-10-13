class SetColumnsAsUnique < ActiveRecord::Migration[7.0]
  def change
    change_column :genres, :name, :string, unique: true
    change_column :movies, :title, :string, unique: true
  end
end
