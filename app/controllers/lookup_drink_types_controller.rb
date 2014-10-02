class LookupDrinkTypesController < ApplicationController

	private

  	def lookup_drink_type_params
      params.require(:lookup_drink_type).permit(:id, :name, :description)
    end

end
