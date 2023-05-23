json.extract! order, :id, :total, :status, :payment_method, :note, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
json.note order.note.to_s
