class AddShipDateToOrders < ActiveRecord::Migration[8.0]

  def up
    add_column :orders, :ship_date, :date_time
  end

  def down    
    remove_column :orders, :ship_date
  end


end
