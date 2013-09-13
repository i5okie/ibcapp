require 'spec_helper'

describe "suppliers/index" do
  before(:each) do
    assign(:suppliers, [
      stub_model(Supplier,
        :name => "Name",
        :description => "Description",
        :website => "Website",
        :account_number => "Account Number",
        :sales_contact => "Sales Contact"
      ),
      stub_model(Supplier,
        :name => "Name",
        :description => "Description",
        :website => "Website",
        :account_number => "Account Number",
        :sales_contact => "Sales Contact"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Account Number".to_s, :count => 2
    assert_select "tr>td", :text => "Sales Contact".to_s, :count => 2
  end
end
