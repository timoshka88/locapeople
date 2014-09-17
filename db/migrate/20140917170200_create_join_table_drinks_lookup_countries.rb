class CreateJoinTableDrinksLookupCountries < ActiveRecord::Migration
	create_join_table :drinks, :lookup_countries do |t|
	  t.index :drink_id
	  t.index :lookup_country_id
end
