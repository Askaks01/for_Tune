class RoutinesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
  end

  def new
    @routine = Routine.new
  end

  def create
    Routine.create(routine_params)
    if @routine.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def routine_params
    params.require(:routine).permit(:name, :image, :descrirtion, :category_id, :timeframe_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
