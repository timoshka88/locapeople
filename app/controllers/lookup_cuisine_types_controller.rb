class LookupCuisineTypesController < ApplicationController

	private

  	def lookup_cuisine_type_params
      params.require(:lookup_cuisine_type).permit(:id ,:name, :description)
    end

end
