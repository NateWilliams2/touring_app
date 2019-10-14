class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :role
      t.integer :pay
      t.boolean :pay_by_percent
      t.references :tour

      t.timestamps
    end
  end
end
