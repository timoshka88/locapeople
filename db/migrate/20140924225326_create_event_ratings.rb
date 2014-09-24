class CreateEventRatings < ActiveRecord::Migration
  def change
    create_table :event_ratings do |t|
      t.integer :lookup_rating_type_id
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
