class DrinkSpirit < ActiveRecord::Base
  attr_accessible :drink_id, :lookup_spirit_id
  belongs_to :drink
  belongs_to	:lookup_spirit
end
