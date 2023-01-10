class AddColumnsToOrderBook < ActiveRecord::Migration[7.0]
  def change
    add_column :order_books, :userid, :integer
  end
end
