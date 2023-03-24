class WeightsController < ApplicationController
  def index
    @weights = Weight.all.order(date: :desc)
  end

  def create
    @weight = Weight.new(weight_params)

    if @weight.save
      redirect_to weights_path, notice: 'Weight was successfully added.'
    else
      render :new
    end
  end

  private

  def weight_params
    params.require(:weight).permit(:value, :date)
  end
end
