class LookupParkingTypesController < ApplicationController

	private

  	def lookup_parking_type_params
      params.require(:lookup_parking_type).permit(:id, :name, :description)
    end

end
