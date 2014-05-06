class AddJobcategoryToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :jobcategory, :string
  end
end
