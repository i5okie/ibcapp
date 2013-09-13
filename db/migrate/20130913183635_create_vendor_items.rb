class CreateVendorItems < ActiveRecord::Migration
  def change
    create_table :vendor_items do |t|
      t.integer :item_id
      t.integer :vendor_id
      t.string :spn

      t.timestamps
    end
    add_index :vendor_items, :spn, :unique => true
  end
end