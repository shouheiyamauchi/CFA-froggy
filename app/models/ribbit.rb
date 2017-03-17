class Ribbit < ApplicationRecord
  belongs_to :frog
  
  has_many :comments

  acts_as_likeable
end
