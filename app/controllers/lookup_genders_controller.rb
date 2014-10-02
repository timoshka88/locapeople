class LookupGendersController < ApplicationController

	private

  	def lookup_gender_params
      params.require(:lookup_gender).permit(:id, :name, :description)
    end

end
