class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :tag_line
      t.integer :team_id

      t.timestamps
    end
  end
end
