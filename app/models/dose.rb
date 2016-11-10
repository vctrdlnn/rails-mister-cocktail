class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail,
    message: "should happen once per year" }
end
