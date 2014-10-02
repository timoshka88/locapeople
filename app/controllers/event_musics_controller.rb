class EventMusicsController < ApplicationController

	private

  	def event_music_params
      params.require(:event_music).permit(:id, :event_id, :lookup_music_type_id)
    end

end
