class Item
  attr_reader :name, :description, :manufacturer, :price, :summary

  def initialize(name, manufacturer, price, description = nil)
    @name = name
    @manufacturer = manufacturer
    @price = price
    @description = description
  end

  def summary
    if @description == nil
      "Name: #{@name}\nManufacturer: #{@manufacturer}\nPrice: $#{sprintf("%.2f", @price)}"
    else
      "Name: #{@name}\nDescription: #{@description}\nManufacturer: #{@manufacturer}\nPrice: $#{sprintf("%.2f", @price)}"
    end
  end
end
