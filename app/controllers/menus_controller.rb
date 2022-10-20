class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
    @menu.menu_requests.build
  end

  def create
    @menu = Menu.create(menu_params)

    if @menu.save
      redirect_to @menu
    else
      redirect_to new_menu_path
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])

    if @menu.update(menu_params)
      redirect_to @menu
    else
      render 'edit'
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    redirect_to menus_path
  end

  private

  def menu_params
    params.require(:menu).permit(:description, menu_requests_attributes: [:price, :item_id, :menu_id, :id])
  end

end
