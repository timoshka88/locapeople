class CreateVenueClassifications < ActiveRecord::Migration
  def change
    create_table 	:venue_classifications do |t|
      t.belongs_to 	:lookup_venue_type
      t.belongs_to	:venue

      t.timestamps
    end
  end
end
