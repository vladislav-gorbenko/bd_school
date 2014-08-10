class CreatePersonGroupJoinTable < ActiveRecord::Migration
  def change
    create_table :groups_people, :id => false do |t|
      t.integer :person_id
      t.integer :group_id
    end
  end
end
