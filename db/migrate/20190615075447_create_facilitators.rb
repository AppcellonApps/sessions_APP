class CreateFacilitators < ActiveRecord::Migration[5.2]
  def change
    create_table :facilitators do |t|
      t.string :name
      t.int :tel_no
      t.string :email
      t.string :gender
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
