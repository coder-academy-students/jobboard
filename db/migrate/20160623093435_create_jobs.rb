class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :company, foreign_key: true
      t.string :title
      t.boolean :remote
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.date :closing_date
      t.string :status
      t.references :job_type, foreign_key: true
      t.string :experience_level

      t.timestamps
    end
  end
end
