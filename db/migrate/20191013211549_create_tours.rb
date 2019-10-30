class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.references :user

      t.timestamps
    end
  end
end
