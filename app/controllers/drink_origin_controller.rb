class DrinkOriginController < ApplicationController

	private

  	def drink_origin_params
      params.require(:drink_origin).permit(:id, :drink_id, :lookup_country_id)
    end

end
