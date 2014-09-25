class CreateEventCuisines < ActiveRecord::Migration
  def change
    create_table 	:event_cuisines do |t|
      t.integer 	:lookup_cuisine_type_id
      t.integer 	:event_id

      t.timestamps
    end
  end
end
