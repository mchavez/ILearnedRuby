class Question < ActiveRecord::Base
  attr_accessible :description, :question, :quiz_id
  #alias_attribute :question, :question_name
  
  belongs_to :test, :foreign_key => :quiz_id
  has_many :answers, :foreign_key => :question_id
  
end
