class WorkoutexercisesController < ApplicationController
  before_action :set_workoutexercise, only: [:show, :update, :destroy]

  # GET /workoutexercises
  def index
    @workoutexercises = Workoutexercise.all

    render json: @workoutexercises
  end

  # GET /workoutexercises/1
  def show
    render json: @workoutexercise
  end

  # POST /workoutexercises
  def create
    @workoutexercise = Workoutexercise.new(workoutexercise_params)

    if @workoutexercise.save
      render json: @workoutexercise, status: :created, location: @workoutexercise
    else
      render json: @workoutexercise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workoutexercises/1
  def update
    if @workoutexercise.update(workoutexercise_params)
      render json: @workoutexercise
    else
      render json: @workoutexercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workoutexercises/1
  def destroy
    @workoutexercise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workoutexercise
      @workoutexercise = Workoutexercise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workoutexercise_params
      params.require(:workoutexercise).permit(:workout_id, :exercise_id, :reps, :sets, :distance, :notes)
    end
end
