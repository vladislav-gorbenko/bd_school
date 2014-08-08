class ChangeColumnNamePerson < ActiveRecord::Migration
  def up
    rename_column :invites, :people_id, :person_id
    rename_column :tegs, :people_id, :person_id
  end
end
