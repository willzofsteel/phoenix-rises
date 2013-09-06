class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :ci_location
      t.string :repo_location

      t.timestamps
    end
  end
end
