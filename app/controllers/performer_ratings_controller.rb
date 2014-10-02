class PerformerRatingsController < ApplicationController

  private

    def performer_rating_params
      params.require(:performer_rating).permit(:id, :lookup_rating_type_id, :performer_id, :user_id)
    end

end
