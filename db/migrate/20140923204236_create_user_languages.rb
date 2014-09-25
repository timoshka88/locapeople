class CreateUserLanguages < ActiveRecord::Migration
  def change
    create_table 	:user_languages do |t|
      t.integer 	:lookup_language_id
      t.integer 	:user_id

      t.timestamps
    end
  end
end
