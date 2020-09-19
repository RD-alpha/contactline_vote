class AddQuestionNoToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :question_number, :integer
    rename_column :questions, :yes_reponse, :yes_response
  end
end
