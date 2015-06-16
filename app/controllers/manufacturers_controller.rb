class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.update(params.require(:manufacturer).permit(:name, :domestic))
    flash[:notice] = "Manufacturer successfully updated!"
    redirect_to manufacturer_url
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy
    redirect_to root_url
  end

end
