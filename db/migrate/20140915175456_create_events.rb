class CreateEvents < ActiveRecord::Migration
  def change
    create_table    :events do |t|
    	
    	t.string		  :name
    	t.text		    :description
      t.string      :official_website_link
    	t.float    		:price
      t.belongs_to  :venue

      t.timestamps
    end
  end
end
