class Dose < ApplicationRecord
  belongs_to :cocktails
  belongs_to :ingredients

  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
