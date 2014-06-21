class CreateTegs < ActiveRecord::Migration
  def change
    create_table :tegs do |t|
      t.string :name
      t.references :user
      t.references :event

      t.timestamps
    end
  end
end
