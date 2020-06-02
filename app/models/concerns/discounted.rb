module Discounted
  extend ActiveSupport::Concern

  included do
    before_save :apply_discount
  end

  def apply_discount
    self.original_amount ||= 0
    self.discount ||= 0
    self.final_amount = original_amount - discount
  end
end
