require 'spec_helper'

shared_examples_for 'discounted' do
  let(:model) { described_class }

  it 'applies discount' do
    object = described_class.new(original_amount: 1000, discount: 200)

    expect do
      object.save
    end
      .to change { object.final_amount }.from(nil).to(800)
  end

  it 'handles nil original amount' do
    object = described_class.new(original_amount: nil)

    expect do
      object.save
    end
      .to change { object.original_amount }.from(nil).to(0)
  end

  it 'handles nil discount' do
    object = described_class.new(discount: nil)

    expect do
      object.save
    end
      .to change { object.discount }.from(nil).to(0)
  end
end
