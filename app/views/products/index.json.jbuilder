json.array!(@products) do |product|
  json.extract! product, :id, :prod_id, :prod_name, :prod_price, :prod_amount, :prod_desc
  json.url product_url(product, format: :json)
end
