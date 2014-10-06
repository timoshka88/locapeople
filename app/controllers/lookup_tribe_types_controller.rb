class LookupTribeTypesController < ApplicationController

	private

  	def lookup_tribe_type_params
      params.require(:lookup_tribe_type).permit(:id, :name, :description)
    end

end
