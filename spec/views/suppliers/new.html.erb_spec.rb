require 'spec_helper'

describe "suppliers/new" do
  before(:each) do
    assign(:supplier, stub_model(Supplier,
      :name => "MyString",
      :description => "MyString",
      :website => "MyString",
      :account_number => "MyString",
      :sales_contact => "MyString"
    ).as_new_record)
  end

  it "renders new supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", suppliers_path, "post" do
      assert_select "input#supplier_name[name=?]", "supplier[name]"
      assert_select "input#supplier_description[name=?]", "supplier[description]"
      assert_select "input#supplier_website[name=?]", "supplier[website]"
      assert_select "input#supplier_account_number[name=?]", "supplier[account_number]"
      assert_select "input#supplier_sales_contact[name=?]", "supplier[sales_contact]"
    end
  end
end
