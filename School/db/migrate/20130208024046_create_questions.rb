class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :description
      t.string :quiz_id

      t.timestamps
    end
  end
end
