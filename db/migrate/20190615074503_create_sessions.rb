class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :name
      t.int :room_no
      t.string :topic

      t.timestamps
    end
  end
end
