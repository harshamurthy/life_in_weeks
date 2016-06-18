class WeeksController < ApplicationController
  def show
    @birthday = params[:request][:intent][:slots]["Birthday"][:value]
    binding.pry
    render json: @birthday
  end
end
