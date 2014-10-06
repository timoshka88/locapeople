class UserMusicsController < ApplicationController

	private

    def user_music_params
      params.require(:user_music).permit(:id, :lookup_music_type_id, :user_id)
    end

end
