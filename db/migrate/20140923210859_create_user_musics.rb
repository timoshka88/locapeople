class CreateUserMusics < ActiveRecord::Migration
  def change
    create_table :user_musics do |t|
      t.integer :lookup_music_type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
