class UserFavSpiritsController < ApplicationController

	private

    def user_fav_spirit_params
      params.require(:user_fav_spirit).permit(:id, :lookup_spirit_id, :user_id)
    end

end
