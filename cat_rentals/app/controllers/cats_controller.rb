class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show_cat
  end

  private
  def cat_params
    params.require(:cat).permit(:id, :name, :color, :sex, :description, :birth_date)
  end
end
