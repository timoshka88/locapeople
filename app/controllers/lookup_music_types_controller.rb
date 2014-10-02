class LookupMusicTypesController < ApplicationController

	private

  	def lookup_music_type_params
      params.require(:lookup_music_type).permit(:id ,:name, :description)
    end

end
