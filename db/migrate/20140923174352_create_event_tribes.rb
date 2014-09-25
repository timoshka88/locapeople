class CreateEventTribes < ActiveRecord::Migration
  def change
    create_table 	:event_tribes do |t|
      t.integer 	:lookup_tribe_type_id
      t.integer 	:event_id

      t.timestamps
    end
  end
end
