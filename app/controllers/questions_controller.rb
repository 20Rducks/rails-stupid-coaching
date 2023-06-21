class QuestionsController < ApplicationController
  def ask
    params[:answer]
  end

  def answer
    @questions = params[:answer]

    if @questions == 'I am going to work'
      @answer = 'Great'
    elsif @questions.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
