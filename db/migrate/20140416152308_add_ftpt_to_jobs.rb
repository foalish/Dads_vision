class AddFtptToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :ftpt, :string
  end
end
