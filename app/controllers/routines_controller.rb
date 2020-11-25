class RoutinesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @routines = Routine.order('created_at DESC')
    @newroutine = Routine.last
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.new(routine_params)
    if @routine.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @routine = Routine.find(params[:id])
    @comment = Comment.new
    @comments = @routine.comments.includes(:user)
  end

  def edit
    @routine = Routine.find(params[:id])
  end

  def update
    @routine = Routine.find(params[:id])
    if @routine.update(routine_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @routine = Routine.find(params[:id])
    @routine.destroy
    redirect_to root_path
  end

  def search
    @routines = Routine.search(params[:keyword])
  end

  def lifesearch
    @routines = Routine.lifesearch.order('created_at DESC')
  end

  def trainingsearch
    @routines = Routine.trainingsearch.order('created_at DESC')
  end
  
  private

  def routine_params
    params.require(:routine).permit(:name, :image, :description, :category_id, :timeframe_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
