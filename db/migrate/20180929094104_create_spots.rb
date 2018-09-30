class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :spot, unique: true, index: true
      t.timestamps
    end
  end
end
