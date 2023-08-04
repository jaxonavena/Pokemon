require_relative 'simulation'

class Game
  def initialize
    resolve_game_mode
  end

  private

  def resolve_game_mode
    puts "\nWhich Game Mode Would You Like To Play?"
    puts "Options:\n1. Auto\n2. Two Player"

    user_choice = gets.chomp
    case user_choice
    when '1'
      start_simulation
    when '2'
      start_two_player
    else
      puts 'Error: Invalid Option'
    end
  end

  def start_simulation
    simulation = Simulation.new
    simulation.start_battle
  end

  def start_two_player
    'temp'
  end
end

Game.new
