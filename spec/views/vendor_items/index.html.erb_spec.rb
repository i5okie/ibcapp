require 'spec_helper'

describe "vendor_items/index" do
  before(:each) do
    assign(:vendor_items, [
      stub_model(VendorItem,
        :item_id => 1,
        :vendor_id => 2,
        :spn => "Spn"
      ),
      stub_model(VendorItem,
        :item_id => 1,
        :vendor_id => 2,
        :spn => "Spn"
      )
    ])
  end

  it "renders a list of vendor_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Spn".to_s, :count => 2
  end
end
