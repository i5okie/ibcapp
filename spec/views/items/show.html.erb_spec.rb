require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "Name",
      :description => "MyText",
      :specs => "MyText",
      :vendor_id => 1,
      :vpn => "Vpn"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Vpn/)
  end
end
