class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :user_name
      t.string :question_id
      t.string :response
      t.string :quiz_id

      t.timestamps
    end
  end
end
