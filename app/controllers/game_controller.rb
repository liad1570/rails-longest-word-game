require 'open-uri'
require 'json'
class GameController < ApplicationController
  def new
  	o = [('A'..'Z')].map(&:to_a).flatten
    @letters = (0...10).map { o[rand(o.length)] }.join

   
  	
  	# letters.each do |letter|


  end

  def score
  	 @result = JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{params[:guess]}").read)
  end
end
