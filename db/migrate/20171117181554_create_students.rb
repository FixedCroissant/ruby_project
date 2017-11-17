class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
              t.string :students
              t.integer :studentID
              t.string :fName
              t.string :lName
              t.string :classification
              t.string :school
              t.string :schoolType
              t.timestamps
    end
  end
end
