class Invoice < ApplicationRecord
  include Discounted
  alias_attribute :original_amount, :subtotal
  alias_attribute :final_amount, :total
end
