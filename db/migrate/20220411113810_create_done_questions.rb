class CreateDoneQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :done_questions do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
