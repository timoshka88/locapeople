class CountryLanguageController < ApplicationController


	private

  	def country_language_params
      params.require(:country_language).permit(:id, :lookup_country_id, :lookup_language_id)
    end

end
