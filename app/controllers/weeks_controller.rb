class WeeksController < ApplicationController
  def show
    @birthday = params[:request][:intent][:slots]["Birthday"][:value]
    render json: @birthday
  end
end
