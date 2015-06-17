class AddColumnApiToService < ActiveRecord::Migration
  def change
    add_column :services, :api, :text
  end
end
