class CreateUserTribes < ActiveRecord::Migration
  def change
    create_table :user_tribes do |t|
      t.integer :lookup_tribe_type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
