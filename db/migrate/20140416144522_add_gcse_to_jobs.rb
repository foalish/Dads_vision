class AddGcseToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :gcse, :string
  end
end
