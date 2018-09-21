class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name, null: false, unique: true
      t.string :name, null: false
      t.integer :number, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :password, null: false, unique: true
      t.timestamps
    end
  end
end
