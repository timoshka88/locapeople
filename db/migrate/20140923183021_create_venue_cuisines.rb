class CreateVenueCuisines < ActiveRecord::Migration
  def change
    create_table 	:venue_cuisines do |t|
      t.integer 	:lookup_cuisine_type_id
      t.integer 	:venue_id

      t.timestamps
    end
  end
end
