class CreateWorkSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :work_spots do |t|
      t.references :test, foreign_key: true
      t.references :spot, foreign_key: true
      t.timestamps
    end
  end
end
