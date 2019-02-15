class AddHostToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :host_id, :integer
    add_column :events, :guest_id, :integer
  end
end
