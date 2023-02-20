class GamesController < ApplicationController
  def new
    games = params[:games]

    @letters = (0...10).map { (65 + rand(26)).chr }
  end
  def score

    @word = params[:word].chars
    @grid = params[:name].downcase.split

    @good_grid = @word.all? {|letter| @word.count(letter)<= @grid.count(letter)}

    # if @name.include(params:word.split)
    #   "Congratulations! #{params:word} is a valid English word."
    # else
    #   "#{word} is not made up of @letters"
    # end
  end
end
