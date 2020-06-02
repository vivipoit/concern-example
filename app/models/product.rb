class Product < ApplicationRecord
  include Discounted
  alias_attribute :original_amount, :regular_price
  alias_attribute :final_amount, :sale_price
end
