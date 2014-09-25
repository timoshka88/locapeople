class CreateLookupGenders < ActiveRecord::Migration
  def change
    create_table  :lookup_genders do |t|
    	t.string 		:name
    	t.text			:description

      t.timestamps
    end
  end
end
