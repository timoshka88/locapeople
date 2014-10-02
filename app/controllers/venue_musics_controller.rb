class VenueMusicsController < ApplicationController

	private

    def venue_music_params
      params.require(:venue_music).permit(:id, :lookup_music_type_id, :venue_id)
    end

end
