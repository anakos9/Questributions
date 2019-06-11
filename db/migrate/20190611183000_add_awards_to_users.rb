class AddAwardsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :champion, :integer, :default => 0
    add_column :users, :most_communicative, :integer, :default => 0
    add_column :users, :best_leadership, :integer, :default => 0
  end
end
