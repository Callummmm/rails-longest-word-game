class GamesController < ApplicationController
  # display random grid and form
  # form will be submitted with POST to the score action
  def new
    @letters = ('a'..'z').to_a
    @rand_letters = []
    10.times do
      @rand_letters.append(@letters[rand(26)])
    end
    # puts params[:word]
  end
  # score?
  def score
    @word = params[:word].split("")
    rand_letters = params[:rand_letters]
    raise
    @word.each do |x|
      if rand_letters.include?(x)

      else
        # make words on score page = "Sorry but @word can't be..."
      end
    end
  end
end
