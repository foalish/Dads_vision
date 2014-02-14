class CreateInstitcourses < ActiveRecord::Migration
  def change
    create_table :institcourses do |t|
      t.integer :institution_id, :null => false
      t.integer :course_id, :null => false

      t.timestamps
    end
  end
end
