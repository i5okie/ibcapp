require 'spec_helper'

describe "vendors/edit" do
  before(:each) do
    @vendor = assign(:vendor, stub_model(Vendor,
      :name => "MyString",
      :description => "MyString",
      :website => "MyString",
      :support_page => "MyString",
      :partner => false,
      :partner_id => "MyString"
    ))
  end

  it "renders the edit vendor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vendor_path(@vendor), "post" do
      assert_select "input#vendor_name[name=?]", "vendor[name]"
      assert_select "input#vendor_description[name=?]", "vendor[description]"
      assert_select "input#vendor_website[name=?]", "vendor[website]"
      assert_select "input#vendor_support_page[name=?]", "vendor[support_page]"
      assert_select "input#vendor_partner[name=?]", "vendor[partner]"
      assert_select "input#vendor_partner_id[name=?]", "vendor[partner_id]"
    end
  end
end
