class CreateJoinTableProgressConcept < ActiveRecord::Migration
  def change
    create_join_table :progresses, :concepts do |t|
      # t.index [:progress_id, :concept_id]
      # t.index [:concept_id, :progress_id]
    end
  end
end
