class CoachingController < ApplicationController

  def answer
    #send something to view with instance var
    query = params[:query]
    puts params
    @your_question = query
    return if query.nil?

    if query.downcase == "i am going to work right now!"
      @coach_answer = ''
    elsif query.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end

