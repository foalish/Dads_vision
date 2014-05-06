class AddInstitutionToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :institution, :string
  end
end
