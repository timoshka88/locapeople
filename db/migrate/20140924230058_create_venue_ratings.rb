class CreateVenueRatings < ActiveRecord::Migration
  def change
    create_table :venue_ratings do |t|
      t.integer :lookup_rating_type_id
      t.integer :venue_id
      t.integer :user_id
      t.integer :rate_amount

      t.timestamps
    end
  end
end
