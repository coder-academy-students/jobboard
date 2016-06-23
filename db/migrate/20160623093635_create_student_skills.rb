class CreateStudentSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :student_skills do |t|
      t.references :student_profile, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
