class LookupCitiesController < ApplicationController

	private

  	def lookup_city_params
      params.require(:lookup_city).permit(:id, :name, :description , :english_speakers_percentage, :latitude, :longitude, :timezone, :code, :lookup_country_id, :lookup_region_id, :last_call_time_id)
    end

end
