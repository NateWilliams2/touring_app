class AddPitStopToTour < ActiveRecord::Migration[6.0]
  #def change
  #  add_reference :tours, :pit_stop, null: false, foreign_key: true
  #end
  def self.up
    add_column :tours, :pit_stop, :integer
    change_column :tours, :pit_stop, :integer, :null => true
  end

  def self.down
    remove_column :tours, :pit_stop
  end
end
