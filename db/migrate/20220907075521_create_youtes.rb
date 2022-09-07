class CreateYoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :youtes do |t|
      t.integer :youte_genre_id, null: false
      t.integer :user_id, null: false
      t.text :youte_text, null: false
      t.boolean :report, null: false, default: "false"
      t.boolean :indicate, null: false, default: "true"

      t.timestamps
    end
  end
end
