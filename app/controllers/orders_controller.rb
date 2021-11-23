class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.service = @service
    if @order.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def destroy
    @order.destroy
    redirect_to service_path(@order.service)
  end

  private

  def order_params
    params.require(:order).permit(:comment, :movie_id)
  end

  def set_order
    @order = order.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end
end

end
