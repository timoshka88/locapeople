class LookupLanguagesController < ApplicationController

	private

  	def lookup_language_params
      params.require(:lookup_language).permit(:id, :name, :description)
    end

end
