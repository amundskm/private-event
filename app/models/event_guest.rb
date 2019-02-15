class EventGuest < ApplicationRecord
belongs_to :guest, :class_name => "User"
belongs_to :attendable_event, :class_name => "Post"
end
