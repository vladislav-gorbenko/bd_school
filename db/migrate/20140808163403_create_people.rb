class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :phone_number
      t.string :role
      t.string :status
      t.string :group_name
      t.string :birthday
      t.string :description
      t.datetime :date_become_member
      t.datetime :date_left_membership
      t.datetime :last_invited_action
      t.timestamps
    end
  end
end
