class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_description
      t.integer :member_count

      t.timestamps
    end
  end
end
