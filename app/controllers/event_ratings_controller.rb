class EventRatingsController < ApplicationController

	private

  	def event_rating_params
      params.require(:event_rating).permit(:id, :event_id, :lookup_rating_type_id, :user_id)
    end

end
