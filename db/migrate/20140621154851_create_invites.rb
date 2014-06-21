class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :name
      t.string :city
      t.datetime :date_invite
      t.string :description
      t.references :user
      t.references :event

      t.timestamps
    end
  end
end
