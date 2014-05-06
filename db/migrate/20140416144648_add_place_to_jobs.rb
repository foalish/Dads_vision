class AddPlaceToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :place, :string
  end
end
