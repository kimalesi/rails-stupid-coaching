class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @answer = ''
    if ask == 'I am going to work'
      @answer = 'Great!'
    elsif ask.split('')[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end
end
