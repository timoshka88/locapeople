class CreateVenueClassifications < ActiveRecord::Migration
  def change
    create_table :venue_classifications do |t|
      t.integer :lookup_venue_type_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
