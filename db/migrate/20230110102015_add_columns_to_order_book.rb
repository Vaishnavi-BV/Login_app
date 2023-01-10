class AddColumnsToOrderBook < ActiveRecord::Migration[7.0]
  def change
    add_column :order_books, :home_id, :integer
  end
end
