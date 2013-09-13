class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :item_id
      t.integer :supplier_id
      t.integer :cost

      t.timestamps
    end
  end
end
