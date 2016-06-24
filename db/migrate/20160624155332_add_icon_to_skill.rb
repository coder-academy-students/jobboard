class AddIconToSkill < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :icon, :string
  end
end
