class LookupRegionsController < ApplicationController

	private

  	def lookup_region_params
      params.require(:lookup_region).permit(:id, :name, :code, :adm1_code, :description, :lookup_country_id)
    end

end
