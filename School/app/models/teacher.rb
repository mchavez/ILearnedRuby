class Teacher < ActiveRecord::Base
  attr_accessible :email_address, :full_name
  validates :full_name, presence: true
  has_many :courses
end
