class Event < ActiveRecord::Base
has_many :events_guests, :foreign_key => :attendable_event_id
has_many :guests, :through => :event_guests
belongs_to :host
end
