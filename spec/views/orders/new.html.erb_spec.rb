require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :order_id => 1,
      :user_id => 1,
      :invoice_id => 1,
      :prod_id => 1,
      :prod_count => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_order_id", :name => "order[order_id]"
      assert_select "input#order_user_id", :name => "order[user_id]"
      assert_select "input#order_invoice_id", :name => "order[invoice_id]"
      assert_select "input#order_prod_id", :name => "order[prod_id]"
      assert_select "input#order_prod_count", :name => "order[prod_count]"
    end
  end
end
