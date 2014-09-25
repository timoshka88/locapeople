class CreatePerformerMusics < ActiveRecord::Migration
  def change
    create_table 	:performer_musics do |t|
      t.integer 	:lookup_music_type_id
      t.integer 	:performer_id

      t.timestamps
    end
  end
end
