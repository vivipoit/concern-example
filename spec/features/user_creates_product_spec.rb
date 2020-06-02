require 'rails_helper'

feature 'user creates product' do
  scenario 'sucessfully' do
    visit products_path
    click_on 'New Product'
    fill_in 'Regular price', with: 1000
    fill_in 'Discount', with: 200
    click_on 'Create Product'

    expect(page).to have_content 'Product was successfully created.'
    expect(page).to have_content 'Regular price: 1000'
    expect(page).to have_content 'Discount: 200'
    expect(page).to have_content 'Sale price: 800'
  end
end
