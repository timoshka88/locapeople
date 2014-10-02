class CityRatingController < ApplicationController


  private

    def city_rating_params
      params.require(:city_rating).permit(:id, :lookup_city_id, :lookup_rating_type_id, :user_id)
    end
    
end
