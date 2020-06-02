class Product < ApplicationRecord
  before_save :set_sale_price

  def set_sale_price
    self.regular_price ||= 0
    self.discount ||= 0
    self.sale_price = regular_price - discount
  end
end
