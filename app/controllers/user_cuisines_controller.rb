class UserCuisinesController < ApplicationController

private

    def user_cuisines_params
      params.require(:user_cuisine).permit(:id, :lookup_cuisine_type_id, :user_id)
    end
end
