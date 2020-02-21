class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  validates :name, presence: true

  def self.search(search)
    if search
      cocktail = Cocktail.all.map { |cocktail| cocktail if cocktail.name.match(/#{search}/i) }
      if cocktail.empty?
        @cocktails = Cocktail.all
      else
        self.where(id: cocktail)
      end
    else
      @cocktails = Cocktail.all
    end
  end
end
