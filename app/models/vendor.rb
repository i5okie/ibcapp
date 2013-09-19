class Vendor < ActiveRecord::Base
	has_many :items

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |vendor|
				csv << vendor.attributes.values_at(*column_names)
			end
		end
	end

	def self.import(file)
		CSV.foreach(file.path, :headers => true) do |row|
			vendor = find_by_id(row["id"]) || new
			vendor.attributes = row.to_hash.slice(*Vendor.attribute_names())
			vendor.save!
		end
	end
end