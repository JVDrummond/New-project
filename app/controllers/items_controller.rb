class ItemsController < ApplicationController
  before_action :set_category, only: [:new, :create, :edit, :update]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def destroy

    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end

  private

  def set_category
    @category_id = Category.all.pluck(:description, :id)
  end

  def item_params
    params.require(:item).permit(:description, :name, :category_id, :ativo)
  end

end
