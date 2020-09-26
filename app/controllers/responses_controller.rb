class ResponsesController < ApplicationController
  def create
    params.permit(:user_id, :response,:quid)
    @response = Response.new(user_id:params[:user_id],response: params[:response])
    @response.save
    @question = Question.find(params[:quid])
    if params[:response] == "true"
      @question.increment(:yes_response)
    elsif params[:response] =="false"
      @question.increment(:no_response)
    end
    @question.save
    redirect_to :controller => 'main', :action => 'wait'
  end
end
