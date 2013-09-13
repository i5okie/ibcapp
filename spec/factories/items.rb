# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "MyString"
    description "MyText"
    specs "MyText"
    vendor_id 1
    vpn "MyString"
  end
end
