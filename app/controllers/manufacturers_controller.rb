class ManufacturersController < ApplicationController
  before_action :require_login, only: [:edit, :update, :destroy]
  before_action :get_manufacturer, except: [:index]

  def index
    @manufacturers = Manufacturer.all
  end

  def show
  end

  def edit
  end

  def update
    @manufacturer.update(params.require(:manufacturer).permit(:name, :domestic))
    flash[:notice] = "Manufacturer successfully updated!"
    redirect_to manufacturer_url
  end

  def destroy
    @manufacturer.destroy
    redirect_to root_url
  end

  private

  def get_manufacturer
    @manufacturer = Manufacturer.find(params[:id])
  end
end
