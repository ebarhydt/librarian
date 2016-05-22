class ChangeOwnerTypeInItems < ActiveRecord::Migration
  def self.up
    change_column :items, :owner, :integer, :limit => 8
  end
 
  def self.down
    change_column :items, :owner, :integer, :limit => 8
  end
end
