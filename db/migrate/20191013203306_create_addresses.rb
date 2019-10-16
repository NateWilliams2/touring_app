class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :state
      t.string :city
      t.string :street
      t.integer :number
      t.references :show

      t.timestamps
    end
  end
end
