require 'rails_helper'

describe Invoice do
  describe 'discounted' do
    it 'applies discount' do
      invoice = Invoice.new(subtotal: 1000, discount: 200)

      expect do
        invoice.save
      end
        .to change { invoice.total }.from(nil).to(800)
    end

    it 'handles nil subtotal' do
      invoice = Invoice.new(subtotal: nil)

      expect do
        invoice.save
      end
        .to change { invoice.subtotal }.from(nil).to(0)
    end

    it 'handles nil discount' do
      invoice = Invoice.new(discount: nil)

      expect do
        invoice.save
      end
        .to change { invoice.discount }.from(nil).to(0)
    end
  end
end
