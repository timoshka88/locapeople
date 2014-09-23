class CreatePerformerTribes < ActiveRecord::Migration
  def change
    create_table :performer_tribes do |t|
      t.integer :lookup_tribe_type_id
      t.integer :performer_id

      t.timestamps
    end
  end
end
