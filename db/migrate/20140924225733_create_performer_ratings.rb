class CreatePerformerRatings < ActiveRecord::Migration
  def change
    create_table 	:performer_ratings do |t|
      t.integer 	:lookup_rating_type_id
      t.integer 	:performer_id
      t.integer 	:user_id
      t.integer 	:rate_amount

      t.timestamps
    end
  end
end
