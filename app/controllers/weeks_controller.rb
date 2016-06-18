class WeeksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @birthday = params[:request][:intent][:slots]["Birthday"][:value]
    weeks_lived = ((Date.today - Date.parse(@birthday)).to_i)/7
    weeks_in_ninety_years = 4692
    weeks_left = weeks_in_ninety_years - weeks_lived
    render json: weeks_left
  end
end
