class UserFavDrinkTypesController < ApplicationController

	private

    def user_fav_drink_type_params
      params.require(:user_fav_drink_type).permit(:id, :lookup_drink_type_id, :user_id)
    end

end
