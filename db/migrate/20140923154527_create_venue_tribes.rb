class CreateVenueTribes < ActiveRecord::Migration
  def change
    create_table 	:venue_tribes do |t|
      t.integer 	:lookup_tribe_type_id
      t.integer 	:venue_id

      t.timestamps
    end
  end
end
