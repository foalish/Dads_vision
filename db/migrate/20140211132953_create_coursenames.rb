class CreateCoursenames < ActiveRecord::Migration
  def change
    create_table :coursenames do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
