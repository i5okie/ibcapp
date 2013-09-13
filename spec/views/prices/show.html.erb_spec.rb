require 'spec_helper'

describe "prices/show" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :item_id => 1,
      :supplier_id => 2,
      :cost => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
