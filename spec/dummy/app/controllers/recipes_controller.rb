class RecipesController < ApplicationController
  def show
    respond_with Recipe.find(params[:id])
  end

  def create
    params.require(:name)
    respond_with Recipe.create(params.permit(:name, :type))
  end
end
