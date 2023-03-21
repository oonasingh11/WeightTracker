class WeightsController < ApplicationController
  def index
    @weights = Weight.all
  end

  def create
    @weight = Weight.new(weight_params)

    if @weight.save
      render json: @weight
    else
      render json: { errors: @weight.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def weight_params
    params.require(:weight).permit(:value, :date)
  end
end
