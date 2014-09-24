class CreateCountryRatings < ActiveRecord::Migration
  def change
    create_table :country_ratings do |t|
      t.integer :lookup_rating_type_id
      t.integer :lookup_country_id
      t.integer :user_id
      t.integer :rate_amount

      t.timestamps
    end
  end
end
