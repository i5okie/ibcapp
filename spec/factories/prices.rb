# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    item_id 1
    supplier_id 1
    cost 1
  end
end
