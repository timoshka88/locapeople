class EventTribesController < ApplicationController

	private

  	def event_tribe_params
      params.require(:event_tribe).permit(:id, :event_id, :lookup_tribe_type_id)
    end

end
