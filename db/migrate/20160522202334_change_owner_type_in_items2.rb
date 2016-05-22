class ChangeOwnerTypeInItems2 < ActiveRecord::Migration
  def self.up
    change_column :items, :owner, :bigint
  end
 
  def self.down
    change_column :items, :owner, :bigint
  end
end
