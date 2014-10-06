class UserFavDrinksController < ApplicationController

	private

    def user_fav_drinks_params
      params.require(:user_fav_drinks).permit(:id, :drink_id, :user_id)
    end

end
