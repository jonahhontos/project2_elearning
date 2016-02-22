class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :name
      t.text :content
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
