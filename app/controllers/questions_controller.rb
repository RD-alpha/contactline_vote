class QuestionsController < ApplicationController
  def show
    @question =  Question.find(1)
    puts @question
  end
end
