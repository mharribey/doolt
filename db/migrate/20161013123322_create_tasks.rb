# genere toutes les taches

class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
    	t.string :task_title
    	t.string :task_description
    	t.boolean :done, :default => false
    	t.date :deadline
      t.timestamps
    end
  end
end
