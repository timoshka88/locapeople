class DrinkController < ApplicationController

	private

  	def drink_params
      params.require(:drink).permit(:id, :name, :description, :ingredients)
    end

end
