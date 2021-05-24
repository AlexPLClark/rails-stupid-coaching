class QuestionsController < ApplicationController
  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']
    question = params[:question]

    if question == 'I am going to work'
      @response = @answers[0]
    elsif question.include? '?'
      @response = @answers[1]
    else
      @response = @answers[2]
    end
  end
end
