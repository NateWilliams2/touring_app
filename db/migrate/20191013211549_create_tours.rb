class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.date :start_date
      t.date :end_date
      t.integer :expected_merch
      t.string :title

      t.timestamps
    end
  end
end
