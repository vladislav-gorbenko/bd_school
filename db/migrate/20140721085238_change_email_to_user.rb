class ChangeEmailToUser < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
    add_column :users, :email, :string, null: false, default: ""
  end
end
