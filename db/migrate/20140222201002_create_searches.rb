class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :institution_id
      t.integer :coursename_id

      t.timestamps
    end
  end
end
