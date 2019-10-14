class AddShowToTour < ActiveRecord::Migration[6.0]
  # def change
  #   add_reference :tours, :show, null: false, foreign_key: true
  # end
  def self.up
    add_column :tours, :show, :integer
    change_column :tours, :show, :integer, :null => true
  end

  def self.down
    remove_column :tours, :show
  end
end
