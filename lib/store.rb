class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry_either_mens_or_womens

  private

  def must_carry_either_mens_or_womens
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Must carry either men's or women's")
    end
  end
end

# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more
