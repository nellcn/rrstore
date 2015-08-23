require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :order_id => 1,
      :user_id => 1,
      :invoice_id => 1,
      :prod_id => 1,
      :prod_count => 1
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
      assert_select "input#order_order_id", :name => "order[order_id]"
      assert_select "input#order_user_id", :name => "order[user_id]"
      assert_select "input#order_invoice_id", :name => "order[invoice_id]"
      assert_select "input#order_prod_id", :name => "order[prod_id]"
      assert_select "input#order_prod_count", :name => "order[prod_count]"
    end
  end
end
