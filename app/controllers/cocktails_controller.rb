class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  before_action :set_ingredients, only: [:show, :edit, :new]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully created.' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cocktail.update(cocktail_params)
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully updated.' }
        format.json { render :show, status: :ok, location: @cocktail }
      else
        format.html { render :edit }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    fail
  end

  private
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    def set_ingredients
      @ingredients = Ingredient.all.order(:name)
    end

    def cocktail_params
      params.require(:cocktail).permit(:name, :photo, :photo_cache)
    end
end
