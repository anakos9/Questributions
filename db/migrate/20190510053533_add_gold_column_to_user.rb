class AddGoldColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total_gold, :integer
  end
end
