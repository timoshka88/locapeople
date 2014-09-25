class CreateDrinkCategorizations < ActiveRecord::Migration
  def change
    create_table 	:drink_categorizations do |t|
      t.integer 	:drink_id
      t.integer 	:lookup_drink_type_id

      t.timestamps
    end
  end
end
