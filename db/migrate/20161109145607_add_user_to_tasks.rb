class AddUserToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column(:tasks, :user, :integer, options = {})
  end
end
