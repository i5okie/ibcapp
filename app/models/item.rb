class Item < ActiveRecord::Base
	include Bootsy::Container

	monetize :msrp_cents, :allow_nil => true

	has_many :prices
	has_many :suppliers, through: :prices
	belongs_to :vendor


	acts_as_taggable
	acts_as_taggable_on :specs

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			item = find_by_id(row["id"]) || new
			item.attributes = row.to_hash.slice(item_params)
			item.save!
		end
	end
	
end