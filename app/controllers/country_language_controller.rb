class CountryLanguageController < ApplicationController


	private

  	def city_rating_params
      params.require(:city_rating).permit(:id, :lookup_country_id, :lookup_language_id)
    end

end
