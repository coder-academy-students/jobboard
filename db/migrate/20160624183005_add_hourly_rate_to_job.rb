class AddHourlyRateToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :hourly_rate, :integer
  end
end
