class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :contact_name
      t.string :contact_phone
      t.string :logo
      t.text :info
      t.boolean :approved
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
