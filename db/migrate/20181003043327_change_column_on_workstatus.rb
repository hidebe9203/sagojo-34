class ChangeColumnOnWorkstatus < ActiveRecord::Migration[5.2]
  def change
    change_column :workstatuses, :status, :integer, default: 0
  end
end
