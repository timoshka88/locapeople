class LookupHoursController < ApplicationController

	private

  	def lookup_hour_params
      params.require(:lookup_hour).permit(:id, :name)
    end

end
