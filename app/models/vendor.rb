class Vendor < ActiveRecord::Base
	has_many :items

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			vendor = find_by_id(row["id"]) || new
			vendor.attributes = row.to_hash.slice(*vendor_params)
			vendor.save!
		end
	end

end
