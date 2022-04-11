class Question < ApplicationRecord
  has_many :done_questions
  has_many :users, through: :done_questions
end
