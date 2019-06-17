class AddClassroomToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :classroom, :string
  end
end
