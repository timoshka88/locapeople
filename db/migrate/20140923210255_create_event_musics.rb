class CreateEventMusics < ActiveRecord::Migration
  def change
    create_table :event_musics do |t|
      t.integer :lookup_music_type_id
      t.integer :event_id

      t.timestamps
    end
  end
end
