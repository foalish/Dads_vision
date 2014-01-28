class AddColumnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :sub_category, :string
  end
end
