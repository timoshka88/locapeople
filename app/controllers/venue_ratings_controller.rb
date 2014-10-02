class VenueRatingsController < ApplicationController

	private

    def venue_rating_params
      params.require(:venue_rating).permit(:id, :lookup_rating_type_id, :user_id, :venue_id)
    end

end
