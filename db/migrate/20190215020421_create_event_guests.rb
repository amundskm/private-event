class CreateEventGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :event_guests do |t|

      t.timestamps
    end
  end
end
