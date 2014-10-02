class EventCuisinesController < ApplicationController

	private

  	def event_cuisine_params
      params.require(:event_cuisine).permit(:id, :event_id, :lookup_cuisine_type_id)
    end

end
