class CreateWorkstatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :workstatuses do |t|
      t.references :user, foreign_key: true
      t.references :work, foreign_key: true
      t.integer :status, null: false
      t.timestamps
    end
  end
end
