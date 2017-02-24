class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :text
      t.datetime :deadline

      t.timestamps
    end
  end
end
