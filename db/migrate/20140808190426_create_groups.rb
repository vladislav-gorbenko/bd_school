class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :instructor
      t.string :city
      t.string :type
      t.string :birthday
      t.string :description
      t.timestamps
      t.timestamps
    end
  end
end
