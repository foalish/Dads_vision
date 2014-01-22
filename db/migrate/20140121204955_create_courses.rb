class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :institutiontype
      t.string :institution
      t.string :ftpt
      t.string :duration
      t.string :dept
      t.string :course
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
