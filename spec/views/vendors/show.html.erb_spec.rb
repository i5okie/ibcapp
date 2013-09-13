require 'spec_helper'

describe "vendors/show" do
  before(:each) do
    @vendor = assign(:vendor, stub_model(Vendor,
      :name => "Name",
      :description => "Description",
      :website => "Website",
      :support_page => "Support Page",
      :partner => false,
      :partner_id => "Partner"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Website/)
    rendered.should match(/Support Page/)
    rendered.should match(/false/)
    rendered.should match(/Partner/)
  end
end
