class CreateAddColumnToCourses < ActiveRecord::Migration
  def change
         add_column :courses, :coursename, :string

  end
end
