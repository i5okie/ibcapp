class Item < ActiveRecord::Base
	include Bootsy::Container

	monetize :msrp_cents, :allow_nil => true

	has_many :prices
	has_many :suppliers, through: :prices
	belongs_to :vendor


	acts_as_taggable
	acts_as_taggable_on :specs

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)
			end
		end
	end

	def self.import(file)
		CSV.foreach(file.path, :headers => true) do |row|
			item = Item.where(
				:id => row[0],
				:name => row[1],
				:description => row[2],
				:vendor_id => Vendor.find_by_name(row[4]),
				:vpn => row[5],
				:msrp_cents => row[8],
				:msrp_currency => row[9]
				)
			item.first_or_create!
		end
	end
	
end