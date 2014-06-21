class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :city
      t.string :type_action
      t.datetime :date_action
      t.string :description

      t.timestamps
    end
  end
end
