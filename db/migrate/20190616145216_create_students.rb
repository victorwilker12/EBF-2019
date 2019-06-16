class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.string :classroom
      t.string :father
      t.string :mom
      t.string :contact
      t.string :address
      t.string :go
      t.string :return

      t.timestamps
    end
  end
end
