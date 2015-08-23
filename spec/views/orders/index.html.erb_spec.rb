require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :order_id => 1,
        :user_id => 2,
        :invoice_id => 3,
        :prod_id => 4,
        :prod_count => 5
      ),
      stub_model(Order,
        :order_id => 1,
        :user_id => 2,
        :invoice_id => 3,
        :prod_id => 4,
        :prod_count => 5
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
