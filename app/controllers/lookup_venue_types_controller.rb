class LookupVenueTypesController < ApplicationController

	private

  	def lookup_venue_type_params
      params.require(:lookup_venue_type).permit(:id, :name, :description)
    end

end
