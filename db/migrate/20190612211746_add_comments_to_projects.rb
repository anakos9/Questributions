class AddCommentsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :comments, :text, array: true, default: []
  end
end
