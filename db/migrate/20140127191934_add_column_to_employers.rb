class AddColumnToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :sub_category, :string
  end
end
