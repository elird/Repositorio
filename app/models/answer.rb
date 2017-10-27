class Answer < ActiveRecord::Base
	has_many :answer_question
	has_many :question
end
