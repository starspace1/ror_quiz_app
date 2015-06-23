class CarModelsController < ApplicationController

  def new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car_model = CarModel.new
  end

  def create
    @manufacturer = Manufacturer.find(params[:manufacturer_id])

    @car_model = @manufacturer.car_models.create(car_model_params)
    if @car_model.valid?
      redirect_to manufacturer_car_model_path(@manufacturer, @car_model), notice: "#{@car_model.name} has been created"
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
