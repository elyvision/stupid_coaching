class CoachingsController < ApplicationController

  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

private

  def coach_answer(your_message)
      if your_message == "I am going to work right now!" || your_message == "I am going to work right now!".upcase
        return ""
      elsif your_message.include?("?")
        return "Silly question, get dressed and go to work!"
      else
        return "I don't care, get dressed and go to work!"
      end
    end


def coach_answer_enhanced(your_message)
  answer = coach_answer(your_message)
  if answer != ""
    if your_message.upcase == your_message
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  else
    ""
  end
end

end









