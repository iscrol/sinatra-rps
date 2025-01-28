require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do
  options = ["rock", "paper", "scissors"]
  @choice = options.sample
  
  if @choice == "rock"
    @outcome = "tied"
  elsif @choice == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:rock)
end

get("/paper") do
  options = ["rock", "paper", "scissors"]
  @choice = options.sample
  
  if @choice == "paper"
    @outcome = "tied"
  elsif @choice == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:paper)
end

get("/scissors") do
  options = ["rock", "paper", "scissors"]
  @choice = options.sample
  
  if @choice == "scissors"
    @outcome = "tied"
  elsif @choice == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:scissors)
end
