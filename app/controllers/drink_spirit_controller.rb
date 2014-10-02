class DrinkSpiritController < ApplicationController

	private

  	def drink_spirit_params
      params.require(:drink_spirit).permit(:id, :drink_id, :lookup_spirit_id)
    end

end
