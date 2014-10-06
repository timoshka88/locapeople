class EventsController < ApplicationController
	private

  	def event_params
      params.require(:event).permit(:id, :name, :description, :official_website_link, :price, :venue_id)
    end

end
