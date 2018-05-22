class CreateStudentgrades < ActiveRecord::Migration[5.0]
  def change
    create_table :studentgrades do |t|
      t.timestamps
      t.integer :studentID
      t.string :courseName
      t.string :courseNumber
      t.integer :creditHours
      t.string :grade
      #t.references :student, foreign_key: true
      t.belongs_to :student, index: true
    end
  end
end
