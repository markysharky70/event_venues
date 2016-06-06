class EventVenue < ActiveRecord::Base

  acts_as_indexed :fields => [:venue_name, :venue_address]

  validates :venue_name, :venue_address, :presence => true
end
