class CreateOrderBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :order_books do |t|
      t.string :schoolname
      t.string :booktitle
      t.integer :isbn
      t.integer :quantity

      t.timestamps
    end
  end
end
