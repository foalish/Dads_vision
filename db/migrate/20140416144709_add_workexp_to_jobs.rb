class AddWorkexpToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :workexp, :string
  end
end
