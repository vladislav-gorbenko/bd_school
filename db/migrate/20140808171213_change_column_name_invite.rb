class ChangeColumnNameInvite < ActiveRecord::Migration
  def up
    rename_column :invites, :user_id, :people_id
    rename_column :tegs, :user_id, :people_id
  end
end
