require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :name => "Name",
        :description => "MyText",
        :specs => "MyText",
        :vendor_id => 1,
        :vpn => "Vpn"
      ),
      stub_model(Item,
        :name => "Name",
        :description => "MyText",
        :specs => "MyText",
        :vendor_id => 1,
        :vpn => "Vpn"
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Vpn".to_s, :count => 2
  end
end
