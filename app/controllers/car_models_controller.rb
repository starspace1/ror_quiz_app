class CarModelsController < ApplicationController

  def new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car_model = CarModel.new
  end

  def create
    @manufacturer = Manufacturer.find(params[:manufacturer_id])

    if @car_model = @manufacturer.car_models.create(car_model_params)
      redirect_to manufacturer_car_model_path(@manufacturer, @car_model)
    else
      render 'new'
    end
  end

  def show
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car_model = @manufacturer.car_models.find(params[:id])
  end



  private

  def car_model_params
    params.require(:car_model).permit(:name, :mpg, :price)
  end
end
