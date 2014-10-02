class PerformerTribesController < ApplicationController

  private

    def performer_tribe_params
      params.require(:performer_tribe).permit(:id, :lookup_tribe_type_id, :performer_id)
    end

end
