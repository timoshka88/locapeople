class LookupDrinkType < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :drinks
  # attr_accessible :title, :body
end
