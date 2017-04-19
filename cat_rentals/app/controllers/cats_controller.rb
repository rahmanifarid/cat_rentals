class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show_cat
  end

  def new
    @action = :new
    render :new
  end

  def create
    cat = Cat.new(cat_params)

    if cat.save
      redirect_to cat_url(cat)
    else
      render text: "Cat can't be created!", status: 400
    end
  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    @action = :edit
    render :edit
  end

  def update
    @cat = Cat.find_by(id: params[:id])

    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      render text: "Cat can't be updated!", status: 400
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:id, :name, :color, :sex, :description, :birth_date)
  end
end
