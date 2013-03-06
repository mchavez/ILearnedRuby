class TestReviewsController < ApplicationController
  def index
  	if params[:search]
  		@test_reviews = Answer.where(:quiz_id => params[:quiz_id], :user_name => params[:search])
  	else
  		@test_reviews = Answer.limit(100).all	
  	end
  end
 
  def search
    #@test_reviews = Answer.where(:quiz_id => params[:quiz_id]).limit(100)
    #if params[:search_by] == 'user_name'
      #@test_reviews =@test_reviews.where("user_name LIKE ?", "#{params[:search]}%")
    #elsif params[:search_by] == 'question_id'
      #@test_reviews = @test_reviews.where("question_id LIKE ?", "#{params[:search]}%")
    #end
     #render :action => :index
  end

end
