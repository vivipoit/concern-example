class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.date :issue_date
      t.date :due_date
      t.integer :subtotal
      t.integer :discount
      t.integer :total

      t.timestamps
    end
  end
end
