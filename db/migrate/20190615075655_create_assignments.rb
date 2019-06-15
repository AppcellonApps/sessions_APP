class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
