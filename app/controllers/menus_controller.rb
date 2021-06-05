class MenusController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_menu, except: [:index, :new, :create]
  before_action :move_to_root_path, only: [:new, :edit, :destroy]

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
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      render :show
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @menu.destroy
  end

  private

  def menu_params
    params.require(:menu).permit(:image, :product_name, :product_description, :product_category_id,
                                 :price).merge(user_id: current_user.id)
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end

  # 管理者以外出品・編集・削除不可にする
  def move_to_root_path
    redirect_to root_path if current_user.id != 1
  end
end
