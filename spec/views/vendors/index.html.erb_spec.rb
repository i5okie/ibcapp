require 'spec_helper'

describe "vendors/index" do
  before(:each) do
    assign(:vendors, [
      stub_model(Vendor,
        :name => "Name",
        :description => "Description",
        :website => "Website",
        :support_page => "Support Page",
        :partner => false,
        :partner_id => "Partner"
      ),
      stub_model(Vendor,
        :name => "Name",
        :description => "Description",
        :website => "Website",
        :support_page => "Support Page",
        :partner => false,
        :partner_id => "Partner"
      )
    ])
  end

  it "renders a list of vendors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Support Page".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Partner".to_s, :count => 2
  end
end
