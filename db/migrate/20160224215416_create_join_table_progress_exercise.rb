class CreateJoinTableProgressExercise < ActiveRecord::Migration
  def change
    create_join_table :progresses, :exercises do |t|
      # t.index [:progress_id, :exercise_id]
      # t.index [:exercise_id, :progress_id]
    end
  end
end
