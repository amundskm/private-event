class AddIdsToEventGuest < ActiveRecord::Migration[5.2]
  def change
    add_column :event_guests, :guest_id, :integer
    add_column :event_guests, :attendable_event_id, :integer
    remove_column :events, :guest_id
  end
end
