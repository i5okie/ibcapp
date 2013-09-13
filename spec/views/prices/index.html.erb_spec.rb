require 'spec_helper'

describe "prices/index" do
  before(:each) do
    assign(:prices, [
      stub_model(Price,
        :item_id => 1,
        :supplier_id => 2,
        :cost => 3
      ),
      stub_model(Price,
        :item_id => 1,
        :supplier_id => 2,
        :cost => 3
      )
    ])
  end

  it "renders a list of prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
