class AddColsToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :description, :text
    add_column :jobs, :latitude, :float
    add_column :jobs, :longitude, :float
  end
end
