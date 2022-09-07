class CreateYouteGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :youte_genres do |t|
      t.string :genre_name, null: false
      t.timestamps
    end
  end
end
