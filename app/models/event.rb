class Event < ActiveRecord::Base
  has_many :event_guests, :foreign_key => :guest_event_id
  has_many :guests, :through => :event_guests,
                                :source => :event_guest
  belongs_to :host, :class_name => "User"
end
