class AddQuestionTextEToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :question_text_e, :string
  end
end
