class Catch < ActiveRecord::Base
  has_one :user
  has_one :fish_type
  attr_accessible :date, :fish_type_id, :kept, :lat, :lon, :user_id
end
