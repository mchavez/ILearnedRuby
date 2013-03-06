class TakeQuizController < ApplicationController
  before_filter :authenticate_user!
  def index
    @tests = Question.find_all_by_quiz_id(params[:id])
	  @name = params[:id] # just save the parameter
	  @s = Test.find(params[:id])

	  @tests.each do |question|

	  end

    respond_to do |format|
      format.html #render 'take_quizs/index'
      format.json { render json: 'take_quizs/index' }
    end
  end
end
