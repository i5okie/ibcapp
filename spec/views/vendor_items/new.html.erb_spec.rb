require 'spec_helper'

describe "vendor_items/new" do
  before(:each) do
    assign(:vendor_item, stub_model(VendorItem,
      :item_id => 1,
      :vendor_id => 1,
      :spn => "MyString"
    ).as_new_record)
  end

  it "renders new vendor_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vendor_items_path, "post" do
      assert_select "input#vendor_item_item_id[name=?]", "vendor_item[item_id]"
      assert_select "input#vendor_item_vendor_id[name=?]", "vendor_item[vendor_id]"
      assert_select "input#vendor_item_spn[name=?]", "vendor_item[spn]"
    end
  end
end
