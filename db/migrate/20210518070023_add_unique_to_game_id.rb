class AddUniqueToGameId < ActiveRecord::Migration[6.1]
  def change
    remove_column :favourites, :game_id
    add_column :favourites, :game_id, :bigint, null: false, foreign_key: true, unique: true
  end
end
