class FishType < ActiveRecord::Base
  belongs_to :catch
  attr_accessible :display_weight, :name
end
