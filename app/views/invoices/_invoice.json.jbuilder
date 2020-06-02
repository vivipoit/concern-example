json.extract! invoice, :id, :issue_date, :due_date, :subtotal, :discount, :total, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
