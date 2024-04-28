require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  moves = ["rock","paper","scissors"]
  @our_move = "rock"
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end

get("/paper") do
  moves = ["rock","paper","scissors"]
  @our_move = "paper"
  @comp_move = moves.sample
  
  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end

get("/scissors") do
  moves = ["rock","paper","scissors"]
  @our_move = "scissors"
  @comp_move = moves.sample
  
  if @comp_move == "scissors"
    @outcome = "tied"
  elsif @comp_move == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end
