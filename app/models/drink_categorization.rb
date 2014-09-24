class DrinkCategorization < ActiveRecord::Base
  attr_accessible :drink_id, :lookup_drink_type_id
  belongs_to :drink
  belongs_to	:lookup_drink_type
end
