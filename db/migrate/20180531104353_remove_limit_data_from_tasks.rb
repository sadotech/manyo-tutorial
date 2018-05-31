class RemoveLimitDataFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :limit_data, :integer
  end
end
