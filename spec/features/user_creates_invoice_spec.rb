require 'rails_helper'

feature 'user creates invoice' do
  scenario 'sucessfully' do
    visit invoices_path
    click_on 'New Invoice'
    fill_in 'Subtotal', with: 1000
    fill_in 'Discount', with: 200
    click_on 'Create Invoice'

    expect(page).to have_content 'Invoice was successfully created.'
    expect(page).to have_content 'Subtotal: 1000'
    expect(page).to have_content 'Discount: 200'
    expect(page).to have_content 'Total: 800'
  end
end
