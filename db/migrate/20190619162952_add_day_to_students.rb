class AddDayToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :day, :string
  end
end
