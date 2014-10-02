class LookupSpiritsController < ApplicationController

	private

  	def lookup_spirit_params
      params.require(:lookup_spirit).permit(:id, :name, :description)
    end

end
