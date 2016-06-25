class FixCompanyApprovedBoolean < ActiveRecord::Migration[5.0]
  def change
    remove_column :companies, :approved, :boolean
    add_column :companies, :approved, :boolean, default: false
  end
end
