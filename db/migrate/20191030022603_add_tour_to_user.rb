class AddTourToUser < ActiveRecord::Migration[6.0]
  def self.up
    add_column :users, :tour, :integer
    change_column :users, :tour, :integer, :null => true
  end

  def self.down
    remove_column :users, :tour
  end
end
