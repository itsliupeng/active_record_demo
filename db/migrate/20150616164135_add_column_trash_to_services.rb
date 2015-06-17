class AddColumnTrashToServices < ActiveRecord::Migration
  def change
    add_column :services, :trash, :boolean, default: false
  end
end
