class CocktailsController < ApplicationController
  before_action :set_cocktail, only: []

  def index
    @cocktails = Cocktail.all
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
