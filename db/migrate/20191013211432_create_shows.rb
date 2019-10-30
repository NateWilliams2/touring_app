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
      t.string :wifi_net
      t.string :wifi_pw
      t.boolean :laundry
      t.boolean :showers
      t.string :contact_name
      t.string :contact_email
      t.string :contact_number
      t.string :venue_website

      t.timestamps
    end
  end
end
