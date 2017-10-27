class FaqController < ApplicationController
  def index
  	@question = Question.all
  	@answer = Answer.all
  end
end
