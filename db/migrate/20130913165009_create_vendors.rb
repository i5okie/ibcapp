class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :description
      t.string :website
      t.string :support_page
      t.boolean :partner
      t.string :partner_id

      t.timestamps
    end
  end
end
