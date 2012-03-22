class AddEventIdToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :event_id, :integer
    Registration.delete_all ## Nuke all! registrations!
  end
end
