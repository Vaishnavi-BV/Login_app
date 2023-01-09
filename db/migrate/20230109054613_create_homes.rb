class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
