class MenuRequestsController < ApplicationController

  def index
    @menu_requests = MenuRequest.all
  end

  def new
    @menu_request = MenuRequest.new
  end

  def create
    @menu_request = MenuRequest.new(params_menu_request)

    if @menu_request.save
       redirect_to menu_path(@menu_request.menu)
    else
      render 'new'
    end
  end

  def show
    @menu_request = MenuRequest.find(params[:id])
  end

  def edit
    @menu_request = MenuRequest.find(params[:id])
  end

  def update
    @menu_request = MenuRequest.find(params[:id])

    if @menu_request.update(params_menu_request)
      redirect_to menu_path(@menu_request.menu)
    else
      render 'edit'
    end
  end

  def destroy
    @menu_request = MenuRequest.find(params[:id])
    @menu_request.destroy

    redirect_to menu_path(@menu_request.menu)
  end

  private

  def params_menu_request
    params.require(:menu_request).permit(:item_id, :menu_id, :price)
  end
end
