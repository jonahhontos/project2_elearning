class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :content
      t.string :answer
      t.references :concept, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
