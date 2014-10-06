class LookupRatingTypesController < ApplicationController

	private

  	def lookup_rating_type_params
      params.require(:lookup_rating_type).permit(:id, :name, :description)
    end

end
