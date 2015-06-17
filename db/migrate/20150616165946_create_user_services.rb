class CreateUserServices < ActiveRecord::Migration
  def change
    create_table :user_services do |t|
      t.belongs_to :service, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.decimal :price
      t.integer :used_times, default: 0
      t.integer :total_times

      t.timestamps null: false
    end
  end
end
