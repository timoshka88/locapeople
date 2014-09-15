class CreateLookupRelationshipStatuses < ActiveRecord::Migration
  def change
    create_table :lookup_relationship_statuses do |t|
    	t.string		:name
    	t.string		:description #something funny

      t.timestamps
    end
  end
end
