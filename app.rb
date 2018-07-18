require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @reversed_string = @name.reverse
    "Your reversed string is #{@reversed_string}"
  end 
  
  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "Your square is #{@square}"
  end 
  
  get '/say/:number/:phrase' do
    @times_through = 0 
  
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeated_phrase = [ ]
   until @times_through == @number
      @repeated_phrase << @phrase
      @times_through += 1
      end 
  
 "#{@repeated_phrase}"
  
  end 
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5] 
    @phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  
  "#{@phrase}"
  end

end


 
