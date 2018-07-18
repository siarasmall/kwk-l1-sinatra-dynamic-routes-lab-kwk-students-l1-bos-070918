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
  
    @number = params[:number]
    @phrase = params[:phrase]
    @repeated_phrase = [ ]
   until @times_through == @number
      @repeated_phrase << @phrase
      @times_through += 1
      end 
  
 "#{@repeated_phrase}"
  
  end 

end
