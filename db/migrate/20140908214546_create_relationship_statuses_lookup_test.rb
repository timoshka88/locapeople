class CreateRelationshipStatusesLookup < ActiveRecord::Migration
  def change
    create_table 	:relationship_statuses_lookup do |t|
    	t.string		:name
    	t.string		:description #something funny

      t.timestamps
    end
  end
end