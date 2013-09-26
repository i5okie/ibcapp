require 'CSV'
require 'time'
require 'date'

file1 = ARGV[0]
supfile = ARGV[1]
saveas = ARGV[2]

itemrow = {}
vendors = {}

CSV.foreach(supfile, :headers => true) do |row|
  vendors[row[1]] = row[0].to_i
end

CSV.open(saveas, "wb") do |csv|
	CSV.foreach(file1, :headers => true) do |row|
  		vendr = vendors[row["vendor_id"]]
  		timez = DateTime.now.iso8601
  		csv << [row[0],row[1],row[2],row[3],vendr,row[5],timez,timez,row[8],row[9]]
	end 
end