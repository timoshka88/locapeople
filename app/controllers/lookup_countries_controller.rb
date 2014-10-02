class LookupCountriesController < ApplicationController

	private

  	def lookup_country_params
      params.require(:lookup_country).permit(:id, :name, :fips104, :iso2, :iso3, :ison, :internet, :capital, :map_reference, :nationality, :currency, :currency_code, :population, :description, :english_speakers_percentage, :last_call_time_id
)
    end

end
