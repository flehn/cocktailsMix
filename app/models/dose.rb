class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :details, presence: true
  validates :cocktail_id, presence: true, uniqueness: { scope: :ingredient_id }
  validates :ingredient_id, presence: true
end
