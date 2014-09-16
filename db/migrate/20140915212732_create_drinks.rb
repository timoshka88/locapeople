class CreateDrinks < ActiveRecord::Migration
  def change
    create_table  :drinks do |t|
    	t.string 		:name
    	t.string		:description
    	t.string		:ingredients
    	# t.integer		:country_id #foreign key many-to-many
    	# t.integer		:lookup_drink_type #foreign key many-to-many
    	# t.integer		:lookup_spirit #foreign key many-to-many
      # t.integer		:user #foreign key many-to-many
      t.timestamps
    end
  end
end
