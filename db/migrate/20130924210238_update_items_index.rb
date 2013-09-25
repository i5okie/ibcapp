class UpdateItemsIndex < ActiveRecord::Migration
  def change
  	remove_index :items, :vpn
  end
end
