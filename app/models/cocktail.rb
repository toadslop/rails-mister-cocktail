class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  validates :name, presence: true

  def self.search(search)
    if search
      cocktail = Cocktail.find_by_name(search)
      if cocktail
        self.where(id: cocktail)
      else
        @cocktails = Cocktail.all
      end
    else
      @cocktails = Cocktail.all
    end
  end
end
