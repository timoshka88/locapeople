class Drink < ActiveRecord::Base
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :lookup_drink_types
  has_and_belongs_to_many :lookup_spirits
  has_and_belongs_to_many :users
  # attr_accessible :title, :body
end