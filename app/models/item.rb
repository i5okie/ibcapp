class Item < ActiveRecord::Base
	include Bootsy::Container

	has_many :prices
	has_many :suppliers, through: :prices
	belongs_to :vendor
	
end