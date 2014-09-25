class CreateUserCuisines < ActiveRecord::Migration
  def change
    create_table 	:user_cuisines do |t|
      t.integer 	:lookup_cuisine_type_id
      t.integer 	:user_id

      t.timestamps
    end
  end
end
