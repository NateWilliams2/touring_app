class AddAddressToShow < ActiveRecord::Migration[6.0]
  # def change
  #   add_reference :shows, :address, null: false, foreign_key: true
  #   #add_belongs_to :shows, :address, polymorphic: true
  # end
  def self.up
    add_column :shows, :address, :integer
    change_column :shows, :address, :integer, :null => true
  end

  def self.down
    remove_column :shows, :address
  end
end
