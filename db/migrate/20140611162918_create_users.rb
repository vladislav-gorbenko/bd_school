class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password
      t.string :role
      t.string :city
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :group_name
      t.string :status
      t.string :description
      t.datetime :date_become_member
      t.datetime :date_left_membership
      t.datetime :last_invited_action
      t.datetime :date_become_member

      t.timestamps
    end
  end
end
