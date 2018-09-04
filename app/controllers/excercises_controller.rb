class ExcercisesController < ApplicationController
  before_action :set_excercise, only: [:show, :update, :destroy]

  # GET /excercises
  def index
    @excercises = Excercise.all

    render json: @excercises
  end

  # GET /excercises/1
  def show
    render json: @excercise
  end

  # POST /excercises
  def create
    @excercise = Excercise.new(excercise_params)

    if @excercise.save
      render json: @excercise, status: :created, location: @excercise
    else
      render json: @excercise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /excercises/1
  def update
    if @excercise.update(excercise_params)
      render json: @excercise
    else
      render json: @excercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /excercises/1
  def destroy
    @excercise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excercise
      @excercise = Excercise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def excercise_params
      params.require(:excercise).permit(:name, :user_id, :exercise_type, :duration, :description)
    end
end
