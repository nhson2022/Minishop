class Product < ApplicationRecord
  belongs_to :category
  has_rich_text :description
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def self.search(params)
    if params[:q].present?
      # chi duoc includes moi quan he
      return includes(:category) 
               .where("LOWER(title) LIKE LOWER(?)", "%#{params[:q].to_s.squish}%")
               .order(id: :desc)
               .paginate(page: params[:page] || 1, per_page: 10)
    end

    includes(:category)
      .order(id: :desc)
      .paginate(page: params[:page] || 1, per_page: 10)
  end
end
