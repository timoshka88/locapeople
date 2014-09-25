class CreateCityRatings < ActiveRecord::Migration
  def change
    create_table 	:city_ratings do |t|
      t.integer 	:lookup_rating_type_id
      t.integer 	:lookup_city_id
      t.integer 	:user_id
      t.integer 	:rate_amount

      t.timestamps
    end
  end
end
