class UserLanguagesController < ApplicationController

	private

    def user_language_params
      params.require(:user_language).permit(:id, :lookup_language_id, :user_id)
    end

end
