class ColumnsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :update]
  before_action :set_item, only: [:show, :edit, :update]
  before_action :move_to_index, only: [:edit, :update]

  def index
    @columns = Column.all.order("created_at DESC")
  end

  def new
    @column = Column.new
  end

  def create
    @column = Column.new(column_params)
   if @column.save
      redirect_to columns_index_path
    else
     render :new
   end
  end

  def show
  end

  def edit
  end

  def update
    if @column.update(column_params)
      redirect_to column_path
    else
      render :edit
    end
  end

  private
  def column_params
    params.require(:column).permit(:name, :conclusion, :reason, :reference, :category_id, :part_id, :image).merge(user_id: current_user.id)
  end

  def set_item
    @column = Column.find(params[:id])
  end

  def move_to_index
    unless @column.user.id == current_user.id
      redirect_to action: :index
    end
  end
end
