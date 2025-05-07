class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy

  def total_price
    cart_items.includes(:product).map { |item| item.quantity * item.product.price }.sum
  end
end