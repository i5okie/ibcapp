require 'spec_helper'

describe "suppliers/show" do
  before(:each) do
    @supplier = assign(:supplier, stub_model(Supplier,
      :name => "Name",
      :description => "Description",
      :website => "Website",
      :account_number => "Account Number",
      :sales_contact => "Sales Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Website/)
    rendered.should match(/Account Number/)
    rendered.should match(/Sales Contact/)
  end
end
