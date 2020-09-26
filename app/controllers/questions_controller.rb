class QuestionsController < ApplicationController
  def newq
    @current_q  = Question.find_by current: 1
    @question_id = @current_q[:id]
    @return_value = "0"
    params.permit(:id)
    puts @question_id
    puts params[:id]
    puts @return_value
    unless @question_id == params[:id]
      @return_value = "1"
    end
    puts @return_value
    render plain: @return_value
  end
end
