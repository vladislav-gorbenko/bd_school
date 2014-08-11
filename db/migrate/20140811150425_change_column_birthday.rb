class ChangeColumnBirthday < ActiveRecord::Migration
  def change
    change_column :people, :birthday, :datetime
  end
end
