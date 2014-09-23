class CreateVenueMusics < ActiveRecord::Migration
  def change
    create_table :venue_musics do |t|
      t.integer :lookup_music_type_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
