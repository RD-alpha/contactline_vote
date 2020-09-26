class QuestionsController < ApplicationController
  def newq
    @current_q  = Question.find_by current: 1
    @question_id = @current_q[:id]
    @return_value = "0"
    params.permit(:id)
    unless @question_id.to_i == params[:id].to_i
      @return_value = "1"
    end
    render plain: @return_value
  end
end
