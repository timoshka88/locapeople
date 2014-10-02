class PerformerMusicsController < ApplicationController

  private

    def performer_music_params
      params.require(:performer_music).permit(:id, :lookup_music_type_id, :performer_id)
    end

end
