class LookupRelationshipStatusesController < ApplicationController

	private

  	def lookup_relationship_status_params
      params.require(:lookup_relationship_status).permit(:id, :name, :description)
    end

end
