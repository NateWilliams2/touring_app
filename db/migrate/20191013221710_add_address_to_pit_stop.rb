class AddAddressToPitStop < ActiveRecord::Migration[6.0]
  # def change
  #   add_reference :pit_stops, :address, null: false, foreign_key: true
  #   #add_belongs_to :pit_stops, :address, polymorphic: true
  # end
  def self.up
    add_column :pit_stops, :address, :integer
    change_column :pit_stops, :address, :integer, :null => true
  end

  def self.down
    remove_column :pit_stops, :address
  end
end
