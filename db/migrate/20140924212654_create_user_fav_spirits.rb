class CreateUserFavSpirits < ActiveRecord::Migration
  def change
    create_table 	:user_fav_spirits do |t|
      t.integer 	:lookup_spirit_id
      t.integer 	:user_id

      t.timestamps
    end
  end
end
