class AdminController < ApplicationController
  http_basic_authenticate_with :name => "user", :password => "contactadmin"
  def index
  end
  def update
    if params[:reset]
      Question.all.each do |que|
        que.current = 0
        que.yes_response = 0
        que.no_response = 0
        que.save
      end
      @cq = Question.find(1)
      @cq.current = 1
      @cq.save
    else
      Question.all.each do |que|
        que.current = 0
        que.save
      end
      @cq = Question.find(params[:id_a][:id])
      @cq.current = 1
      @cq.save
    end
  end
end
