class AddReferenceUserToTasks < ActiveRecord::Migration[5.0]
  def change
    change_table :tasks do |t|
      t.references :user, index: true, foreign_key: true
    end
  end
end
