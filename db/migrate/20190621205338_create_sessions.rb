class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :abstract
      t.integer :role

      t.timestamps
    end
  end
end
