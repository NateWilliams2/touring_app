class CreatePitStops < ActiveRecord::Migration[6.0]
  def change
    create_table :pit_stops do |t|
      t.string :name
      t.date :date
      t.timestamps
    end
  end
end
