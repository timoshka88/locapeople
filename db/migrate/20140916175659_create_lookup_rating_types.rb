class CreateLookupRatingTypes < ActiveRecord::Migration
  def change
    create_table 	:lookup_rating_types do |t|

    	t.string 		:name
    	t.text			:description
    	
      t.timestamps
    end
  end
end
