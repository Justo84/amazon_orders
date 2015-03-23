class Order
  attr_reader :placed_at, :customer, :payment_method, :shipping_address, :items

  def initialize(placed_at, customer, payment_method, shipping_address)
    @customer = customer
    @placed_at = placed_at
    @payment_method = payment_method
    @shipping_address = shipping_address
    @items = []
  end


  def total
    total = 0
    items.each do |item|
      total += item.price
    end
    total
  end

  def receipt
    list = ''
    items.each do |item|
      list += "#{item.summary}\n\n"
    end
    list
  end


  def summary
    customer = "Date: #{@placed_at}\nCustomer: #{@customer}\nPayment method: #{@payment_method}\nShipping address: #{@shipping_address}\n\nItems:\n\n"

    customer + receipt + "Total: $#{total}"
  end
end
