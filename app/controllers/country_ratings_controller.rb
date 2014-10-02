class CountryRatingsController < ApplicationController

	private

  	def country_rating_params
      params.require(:country_rating).permit(:id, :lookup_country_id, :lookup_rating_type_id, :user_id)
    end

end
