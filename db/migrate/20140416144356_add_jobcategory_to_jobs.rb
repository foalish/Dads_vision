class AddJobcategoryToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :jobcategory, :string
  end
end
