require 'spec_helper'

describe "vendor_items/show" do
  before(:each) do
    @vendor_item = assign(:vendor_item, stub_model(VendorItem,
      :item_id => 1,
      :vendor_id => 2,
      :spn => "Spn"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Spn/)
  end
end
