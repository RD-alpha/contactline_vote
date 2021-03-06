class MainController < ApplicationController
  def index
    @current_q  = Question.find_by current: 1
    @question_text = @current_q[:question_text]
    @question_text_e = @current_q[:question_text_e]
    @question_id = @current_q[:id]
  end
  def results
    @current_q = Question.find_by current: 1
    @question_text = @current_q[:question_text]
    @question_text_e = @current_q[:question_text_e]
    @question_id = @current_q[:id]
    @yes_count = @current_q[:yes_response]
    @no_count= @current_q[:no_response]
  end
  def wait
    @current_q  = Question.find_by current: 1
    @question_id = @current_q[:id]
  end
end
