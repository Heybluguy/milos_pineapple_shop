class LineItem < ApplicationRecord
  belongs_to :hoody
  belongs_to :cart

  def total_price
    hoody.price.to_i * quantity.to_i
  end
end
