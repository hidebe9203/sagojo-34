class AddFormToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :member, :string
    add_column :tests, :limit, :date
    
  end
end
