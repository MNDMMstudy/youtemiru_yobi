class CreateUserStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_statuses do |t|
      t.integer :status, null: false, default: "0"
      t.timestamps
    end
  end
end
