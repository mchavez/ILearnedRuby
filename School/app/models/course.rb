class Course < ActiveRecord::Base
  attr_accessible :code, :name, :teacher_id
  
  validates :code, presence: true
  validates :name, presence: true
  validates :teacher_id, presence: true
  
  belongs_to :teacher
  has_many :tests
end
