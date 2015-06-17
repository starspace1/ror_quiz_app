class FactoriesController < ApplicationController
  def new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @factory = Factory.new
  end

  def create
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @factory = @manufacturer.factories.create(factory_params)
    redirect_to manufacturer_path(@manufacturer), notice: "Factory has been created."
  end

  def show
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @factory = @manufacturer.factories.find(params[:id])
  end

  private

  def factory_params
    params.require(:factory).permit(:city, :state, :unionized)
  end
end
