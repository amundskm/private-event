class RemoveDescriptionLocationFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :title
    remove_column :events, :description
    remove_column :events, :location
  end
end
