class PagesController < ApplicationController

  def home
  end

  def ask
  end

  def answer
    @user_question = params[:question]
     if @user_question == "I am going to work"
      @answer = "Great!"
     elsif @user_question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
     else
      @answer = "I don't care, get dressed and go to work!"
     end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
