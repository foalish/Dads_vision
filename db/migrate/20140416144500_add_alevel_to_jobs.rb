class AddAlevelToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :alevel, :string
  end
end
