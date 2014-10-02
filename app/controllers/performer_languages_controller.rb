class PerformerLanguagesController < ApplicationController

  private

    def performer_language_params
      params.require(:performer_language).permit(:id, :lookup_language_id, :performer_id)
    end

end
