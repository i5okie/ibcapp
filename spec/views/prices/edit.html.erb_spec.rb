require 'spec_helper'

describe "prices/edit" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :item_id => 1,
      :supplier_id => 1,
      :cost => 1
    ))
  end

  it "renders the edit price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_path(@price), "post" do
      assert_select "input#price_item_id[name=?]", "price[item_id]"
      assert_select "input#price_supplier_id[name=?]", "price[supplier_id]"
      assert_select "input#price_cost[name=?]", "price[cost]"
    end
  end
end
