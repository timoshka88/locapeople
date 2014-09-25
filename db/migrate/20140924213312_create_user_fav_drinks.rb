class CreateUserFavDrinks < ActiveRecord::Migration
  def change
    create_table 	:user_fav_drinks do |t|
      t.integer 	:drink_id
      t.integer 	:user_id

      t.timestamps
    end
  end
end
