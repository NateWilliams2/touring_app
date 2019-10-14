class AddMemberToTour < ActiveRecord::Migration[6.0]
  #def change
  #  add_reference :tours, :member, null: false, foreign_key: true
  #end
  def self.up
    add_column :tours, :member, :integer
    change_column :tours, :member, :integer, :null => true
  end

  def self.down
    remove_column :tours, :member
  end
end
