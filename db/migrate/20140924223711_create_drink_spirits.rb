class CreateDrinkSpirits < ActiveRecord::Migration
  def change
    create_table 	:drink_spirits do |t|
      t.integer 	:drink_id
      t.integer 	:lookup_spirit_id

      t.timestamps
    end
  end
end
