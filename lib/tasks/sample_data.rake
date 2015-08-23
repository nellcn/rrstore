namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    User.create!(name: "tester",
                 email: "tester@163.org",
                 password: "111111",
                 password_confirmation: "111111")

    8.times do |n|
      name  = Faker::Name.name
      email = "tester-#{n+1}@163.org"
      password = "111111"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    Product.create!(
      prod_id: 1,
      prod_name: "Pen",
      prod_price: 1,
      prod_amount: 100,
      prod_desc: "Pen")

    Product.create!(
      prod_id: 2,
      prod_name: "Notebook",
      prod_price: 2,
      prod_amount: 100,
      prod_desc: "Notebook")

    Product.create!(
      prod_id: 3,
      prod_name: "Pencil",
      prod_price: 0.5,
      prod_amount: 150,
      prod_desc: "Pencil")

    Product.create!(
      prod_id: 4,
      prod_name: "Paint Brush # 1",
      prod_price: 1.2,
      prod_amount: 50,
      prod_desc: "Paint Brush # 1")

    Product.create!(
      prod_id: 5,
      prod_name: "Post Card (10)",
      prod_price: 0.2,
      prod_amount: 50,
      prod_desc: "10 pieces of Post Card")

    30.times do |n|
      Order.create!(
        order_id: n,
        user_id: n%3+1,
        invoice_id: nil,
        prod_id: n%4+1,
        prod_count: n/3+1
      )
    end
  end
end
