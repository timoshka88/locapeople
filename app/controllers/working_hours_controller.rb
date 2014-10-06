class WorkingHoursController < ApplicationController

	private

    def working_hour_params
      params.require(:working_hour).permit(:id, :venue_id, :opening_hour_id, :closing_hour_id, :working_day_id)
    end

end
