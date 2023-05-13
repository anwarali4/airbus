class AddStatusFieldToAircraftParts < ActiveRecord::Migration[7.0]
  def change
  	add_column :aircraft_parts, :status, :boolean, default: true
  end
end
