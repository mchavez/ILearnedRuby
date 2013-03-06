class Answer < ActiveRecord::Base
  attr_accessible :question_id, :quiz_id, :response, :user_name
  belongs_to :question, :foreign_key => :question_id
  #belongs_to :test
  
  validates :question_id, presence: true
  validates :quiz_id, presence: true
  validates :user_name, presence: true
  
end
