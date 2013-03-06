class Test < ActiveRecord::Base
  attr_accessible :course_id, :date, :description, :name
  
  validates :course_id, presence: true
  belongs_to :course
  has_many :questions, :foreign_key => :quiz_id

  
end
