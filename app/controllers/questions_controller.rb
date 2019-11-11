class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:question]
    if @message.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @message == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
