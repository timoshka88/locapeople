class VenueClassificationsController < ApplicationController

	private

    def venue_classification_params
      params.require(:venue_classification).permit(:id, :lookup_venue_type_id, :venue_id)
    end

end
