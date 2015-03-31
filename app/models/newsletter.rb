class Newsletter < ActiveRecord::Base
  has_many :events
  has_many :photos
end
