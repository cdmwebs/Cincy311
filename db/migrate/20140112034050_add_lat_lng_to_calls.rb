class AddLatLngToCalls < ActiveRecord::Migration
  def change
    change_table :calls do |c|
      c.float :latitude, :longitude
    end
  end
end
