class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :destroy]

  def index
    @services = Service.all
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: service }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id
    if @service.save!
      redirect_to services_path(@service)
    else
      render :new
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :description, :price, :photo, :address)
  end
end
