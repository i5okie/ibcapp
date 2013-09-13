require 'spec_helper'

describe "prices/new" do
  before(:each) do
    assign(:price, stub_model(Price,
      :item_id => 1,
      :supplier_id => 1,
      :cost => 1
    ).as_new_record)
  end

  it "renders new price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prices_path, "post" do
      assert_select "input#price_item_id[name=?]", "price[item_id]"
      assert_select "input#price_supplier_id[name=?]", "price[supplier_id]"
      assert_select "input#price_cost[name=?]", "price[cost]"
    end
  end
end
