class VenueTribesController < ApplicationController

	private

    def venue_tribe_params
      params.require(:venue_tribe).permit(:id, :lookup_tribe_type_id, :venue_id)
    end

end
