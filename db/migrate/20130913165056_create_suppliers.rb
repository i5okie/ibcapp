class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :description
      t.string :website
      t.string :account_number
      t.string :sales_contact

      t.timestamps
    end
  end
end
