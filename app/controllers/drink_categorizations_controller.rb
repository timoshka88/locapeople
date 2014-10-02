class DrinkCategorizationsController < ApplicationController

	private

  	def drink_categorization_params
      params.require(:drink_categorization).permit(:id, :drink_id, :lookup_drink_type_id)
    end

end
