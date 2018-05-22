class RemoveStudentsField < ActiveRecord::Migration[5.0]
  def change
      # Remove students field.
      # tablename first, other items listed are the fields.
      remove_column :students, :students 
  end
end
