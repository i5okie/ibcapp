# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vendor_item do
    item_id 1
    vendor_id 1
    spn "MyString"
  end
end
