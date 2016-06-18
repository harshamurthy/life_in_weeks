class WeeksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @birthday = params[:request][:intent][:slots]["Birthday"][:value]
    render json: @birthday
  end
end
