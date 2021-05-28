class MenusController < ApplicationController
before_action :authenticate_user!, except:[:show,:index]

  def index
    @menu = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  private

  def menu_params
    params.require(:menu).permit(:image, :product_name, :product_description, :product_category_id, :price).merge(user_id: current_user.id)
  end
end

