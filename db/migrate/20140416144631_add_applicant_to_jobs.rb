class AddApplicantToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :applicant, :string
  end
end
