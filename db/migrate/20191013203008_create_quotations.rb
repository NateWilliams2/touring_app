class CreateQuotations < ActiveRecord::Migration[6.0]
  def change
    create_table :quotations do |t|
      t.text :quote
      t.string :author

      t.timestamps
    end
  end
end
