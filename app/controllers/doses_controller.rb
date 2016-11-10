class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :index]
  before_action :set_dose, only: [:destroy]

  def index
  end

  def new
    @dose = Dose.new
  end

  def create
    # @dose = dose.new(dose_params)
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
    redirect_to :back, notice: 'Ingredient was successfully deleted.'
  end

  private

  def dose_params
    # params[:dose].[:cocktail_id] = @cocktail.id
    # params.require(:dose).permit(:content, :rating, :cocktail_id)
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
