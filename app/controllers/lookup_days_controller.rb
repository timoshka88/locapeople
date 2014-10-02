class LookupDaysController < ApplicationController

	private

  	def lookup_day_params
      params.require(:lookup_day).permit(:id, :name)
    end

end
