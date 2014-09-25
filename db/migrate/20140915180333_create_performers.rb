class CreatePerformers < ActiveRecord::Migration
  def change
    create_table      :performers do |t|
    	
    	t.string		    :name
    	t.text   		    :description
      t.belongs_to    :user
    	t.belongs_to		:hometown_city #city_name_id foreign key one-to-many

      t.timestamps
    end
  end
end
