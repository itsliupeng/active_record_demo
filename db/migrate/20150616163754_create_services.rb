class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.decimal :price, default: 0.0
      t.boolean :on_sale, default: false
      t.belongs_to :provider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
