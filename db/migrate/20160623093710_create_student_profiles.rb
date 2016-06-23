class CreateStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :portfolio
      t.string :github
      t.string :linkedin
      t.text :bio
      t.string :image
      t.string :phone
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
