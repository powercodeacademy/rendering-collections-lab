require "rails_helper"

RSpec.describe "orders_index_view" do

  before do
    products = ["tv", "vcr", "macbook", "macbook air", "mouse", "chair", "desk", "lamp", "water bottle"]

    10.times do
      products = ["tv", "vcr", "macbook", "macbook air", "mouse", "chair", "desk", "lamp", "water bottle"]
  Product.create(:name => products.sample, :price => Faker::Number.between(from: 1, to: 1500))
    end
    5.times do
      Customer.create(:name => Faker::Name.name)
    end

    5.times do
      Invoice.create
    end
    10.times do
      order = Order.create(:customer_id => Customer.all.collect(&:id).sample, :invoice_id => Invoice.all.collect(&:id).sample)
      order.products << Product.find(Product.all.collect(&:id).sample)
    end

  end

  it "renders the order partial" do
    orders = Order.first(1)
    assign(:orders, orders)
  render template: "orders/index"
    expect(rendered).to render_template(:partial => "orders/_order")
  end

  it "renders the order partial using the abstract method of rendering collection" do
    orders = Order.first(2)
    assign(:orders, orders)
    render template: "orders/index"
    orders.each do |order|
      expect(rendered).to include(order.id.to_s)
      order.products.each do |product|
        expect(rendered).to include(product.name)
        expect(rendered).to include(product.price.to_s)
      end
      expect(rendered).to include(order.customer.name)
    end
  end

  it "handles empty collections" do
    assign(:orders, [])
  render template: "orders/index"
    expect(rendered).to match(/No Orders/i)
  end

end
