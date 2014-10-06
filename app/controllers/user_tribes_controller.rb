class UserTribesController < ApplicationController

	private

    def user_tribe_params
      params.require(:user_tribe).permit(:id, :lookup_tribe_type_id, :user_id)
    end

end
