class Order < ApplicationRecord
  belongs_to :user
  has_rich_text :note
end
