class User < ActiveRecord::Base
  belongs_to :catch
  attr_accessible :first_name, :last_name, :nickname
end
