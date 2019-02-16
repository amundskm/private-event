class Event < ActiveRecord::Base
  has_many :event_guests, :foreign_key => :attendable_event_id
  has_many :guests, :through => :event_guests
  belongs_to :host, :class_name => "User"

  scope :upcoming_events, -> {where("date >= ?", Date.today)}
  scope :past_events, -> {where("date < ?", Date.today)}
end
