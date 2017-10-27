class Question < ActiveRecord::Base
	has_many :answer_question
	has_many :answer

	    accepts_nested_attributes_for :answer_question
end
