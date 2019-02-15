class User < ActiveRecord::Base
   has_many :event_guests, :foreign_key => :event_guest_id
   has_many :guest_events, :through => :event_guests
   has_many :hosted_events, :foreign_key => :host_id, :class_name => "Event"
 end
