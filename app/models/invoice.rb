class Invoice < ApplicationRecord
  before_save :set_total

  def set_total
    self.subtotal ||= 0
    self.discount ||= 0
    self.total = subtotal - discount
  end
end
