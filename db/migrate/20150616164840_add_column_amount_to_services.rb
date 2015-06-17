class AddColumnAmountToServices < ActiveRecord::Migration
  def change
    add_column :services, :amount, :integer
  end
end
