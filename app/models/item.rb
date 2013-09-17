class Item < ActiveRecord::Base
	include Bootsy::Container

	monetize :msrp_cents, :allow_nil => true

	has_many :prices
	has_many :suppliers, through: :prices
	belongs_to :vendor

	acts_as_taggable
	acts_as_taggable_on :specs
	
end