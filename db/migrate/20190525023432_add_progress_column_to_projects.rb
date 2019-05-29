class AddProgressColumnToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :completion_status, :integer, default: 0
  end
end
