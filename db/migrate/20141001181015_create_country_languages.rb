class CreateCountryLanguages < ActiveRecord::Migration
  def change
    create_table 	:country_languages do |t|
      t.integer 	:lookup_country_id
      t.integer 	:lookup_language_id

      t.timestamps
    end
  end
end
