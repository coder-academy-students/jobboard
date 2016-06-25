class FixRemoteBooleanForJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :remote, :boolean
    add_column :jobs, :remote, :boolean, default: false
  end
end
