class ChangeColumnTypeForadmin < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :admin, :boolean
  end
end
