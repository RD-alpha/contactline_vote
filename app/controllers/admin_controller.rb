class AdminController < ApplicationController
  http_basic_authenticate_with :name => "user", :password => "contactadmin" 
  def index
  end
  def update
    Question.all.each do |que|
      que.current = 0
      que.save
    end
    @cq = Question.find(params[:id_a][:id])
    @cq.current = 1
    @cq.save
  end
end
