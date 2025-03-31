class AddOrderToLineItem < ActiveRecord::Migration[8.0]
  def up
    add_reference :line_items, :order, null: true, foreign_key: true
    change_column :line_items, :cart_id, :integer, null: true
  end

  def down
    remove_reference :line_items, :order, foreign_key: true
    change_column :line_items, :cart_id, :integer, null: false
  end

end
