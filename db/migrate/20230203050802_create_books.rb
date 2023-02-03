class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.float :price
      t.text :image_data
      t.string :type

      t.timestamps
    end
  end
end
