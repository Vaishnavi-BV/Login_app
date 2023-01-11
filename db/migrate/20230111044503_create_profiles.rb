class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :mail_id
      t.string :gender
      t.string :occupation
      t.string :pincode
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
