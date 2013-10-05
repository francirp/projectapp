class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.integer :project_id

      t.timestamps
    end
  end
end
