class Product < ApplicationRecord
  belongs_to :category
  has_rich_text :description
end
