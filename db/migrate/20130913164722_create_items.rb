class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.text :specs
      t.integer :vendor_id
      t.string :vpn

      t.timestamps
    end
    add_index :items, :vpn, :unique => true
    
  end
end