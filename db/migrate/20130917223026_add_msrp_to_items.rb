class AddMsrpToItems < ActiveRecord::Migration
  def change
  	add_money :items, :msrp
  end
end
