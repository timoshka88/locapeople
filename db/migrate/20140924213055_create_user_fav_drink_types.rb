class CreateUserFavDrinkTypes < ActiveRecord::Migration
  def change
    create_table 	:user_fav_drink_types do |t|
      t.integer 	:lookup_drink_type_id
      t.integer 	:user_id

      t.timestamps
    end
  end
end
