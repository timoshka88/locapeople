class VenueCuisinesController < ApplicationController

	private

    def venue_cuisine_params
      params.require(:venue_cuisine).permit(:id, :lookup_cuisine_type_id, :venue_id)
    end

end
