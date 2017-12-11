require 'sinatra'
require 'csv'

get '/' do
  erb :index
end

get '/vote' do
  @name = params["name"]
  @vote = params["vote"]

  CSV.open("vote.csv", "a") do |row|
    row << [@name, @vote]
  end

  erb :vote
end

get '/result' do
  @list = Array.new
  @list = []

  @count = {}
  @count = Hash.new(0)
  CSV.foreach("vote.csv") do |row|
    if row[1] == "1"
      @count["1hour"] += 1
    elsif row[1] == "2"
      @count["2hour"] += 1
    elsif row[1] == "3"
      @count["3hour"] += 1
    end  

    @list << row                
  end



  erb :result
end