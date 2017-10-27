class FaqController < ApplicationController
  def index
  	@question = Question.all
  end
end
