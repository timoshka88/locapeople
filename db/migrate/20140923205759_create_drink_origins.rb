class CreateDrinkOrigins < ActiveRecord::Migration
  def change
    create_table :drink_origins do |t|
      t.integer :lookup_country_id
      t.integer :drink_id

      t.timestamps
    end
  end
end
