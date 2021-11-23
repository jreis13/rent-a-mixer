class ServicesController < ApplicationController

  before_action :set_service, only: [:show, :destroy]

  def index
    @services = service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = service.new
  end

  def create
    @service = service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
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
    @service = service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name)
  end
end
