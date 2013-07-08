class Release < ActiveRecord::Base
  has_one :upcoming_release
  attr_accessible :branch, :description, :requester, :url
end
