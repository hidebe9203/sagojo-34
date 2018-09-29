class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.text :background_image
      t.text :person_image
      t.text :catchphrase
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.integer :gender, null: false
      t.integer :phone_number, unique: true
      t.string :current_place
      t.text :language_skill
      t.text :career
      t.text :travel_history
      t.text :performance
      t.text :expected_income
      t.text :preparatory_period
      t.text :desired_travel_detail
      t.text :self_introduction
      t.timestamps
    end
  end
end
