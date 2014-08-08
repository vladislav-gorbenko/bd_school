class ChangeColumnName < ActiveRecord::Migration
  def up
    remove_column :users, :password
    remove_column :users, :role
    remove_column :users, :status
    remove_column :users, :group_name
    remove_column :users, :date_become_member
    remove_column :users, :date_left_membership
    remove_column :users, :last_invited_action
  end
end
