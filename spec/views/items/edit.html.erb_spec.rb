require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :description => "MyText",
      :specs => "MyText",
      :vendor_id => 1,
      :vpn => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "textarea#item_description[name=?]", "item[description]"
      assert_select "textarea#item_specs[name=?]", "item[specs]"
      assert_select "input#item_vendor_id[name=?]", "item[vendor_id]"
      assert_select "input#item_vpn[name=?]", "item[vpn]"
    end
  end
end
