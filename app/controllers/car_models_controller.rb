class CarModelsController < ApplicationController
  def new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car_model = CarModel.new
  end

  def create
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car_model = @manufacturer.car_models.create(params.require(:car_model).permit(:name, :mpg, :price))
    if @car_model.valid?
      flash[:notice] = "Car Model successfully created!"
      redirect_to manufacturer_path(@manufacturer)
    else
      flash[":alert-danger"] = "Car Model not created. Make sure that you have given a unique name."
      render :new
    end
  end
end
