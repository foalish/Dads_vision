class AddCoursenameToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :coursename, :string
  end
end
