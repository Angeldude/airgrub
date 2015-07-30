class Produce < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :price_in_cents, numericality: { integer: true,
                                             greater_than: 0 }
  def formatted_price
    dollars = price_in_cents.to_f / 100
    format("%.2f", dollars)
  end
end
