class CreateDrinks < ActiveRecord::Migration
  def change
    create_table  :drinks do |t|
    	t.string 		:name
    	t.text   		:description
    	t.string		:ingredients

      t.timestamps
    end
  end
end
