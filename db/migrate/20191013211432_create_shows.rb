class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.integer :pay
      t.integer :expected_merch
      t.time :load_in
      t.time :set
      t.string :lodging
      t.text :description
      t.date :date
      t.references :tour

      t.timestamps
    end
  end
end
