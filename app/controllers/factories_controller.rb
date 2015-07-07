class FactoriesController < ApplicationController

  skip_before_action :require_login, only: [:show]

  def show

  end

  def new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @factory = Factory.new
  end

  def create
    @manufacturer = Manufacturer.find(params[:manufacturer_id])

    @factory = @manufacturer.factories.create(factory_params)
    if @factory.valid?
      redirect_to manufacturer_path(@manufacturer)
    else
      render 'new'
    end
  end


  private

  def factory_params
    params.require(:factory).permit(:city, :state, :unionized)
  end
end
