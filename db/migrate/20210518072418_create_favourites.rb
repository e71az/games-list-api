class CreateFavourites < ActiveRecord::Migration[6.1]
  def change
    create_table :favourites do |t|
      t.references :game, null: false, foreign_key: true, unique: true

      t.timestamps
    end
  end
end
