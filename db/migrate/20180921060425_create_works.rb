class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.references :company, foreign_key: true
      t.string :title, null: false
      t.text :content, null: false
      t.text :image, null: false
      t.text :detail, null: false
      t.string :upper
      t.string :under
      t.string :condition
      t.string :duration, null: false
      t.text :requirement, null: false
      t.string :member, null: false
      t.date :limit, null: false
      t.timestamps
    end
  end
end
