class Item < ActiveRecord::Base
	has_many :prices
	has_many :suppliers, through: :prices
	belongs_to :vendor
	
end
