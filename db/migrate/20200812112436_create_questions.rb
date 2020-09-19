class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.boolean :current
      t.integer :yes_reponse
      t.integer :no_response

      t.timestamps
    end
  end
end
