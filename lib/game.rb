require 'rubygems'
require 'bundler/setup'
require_relative 'simulation'
require 'tty-prompt'
class Game
  def initialize
    gamemode = resolve_game_mode
    case gamemode
    when 'Auto'
      start_simulation
    when 'Two-Player'
      start_two_player
    else
      'Invalid Option'
    end
  end

  private

  def resolve_game_mode
    TTY::Prompt.new.select('Which Game Mode Would You Like To Play?', %w[Auto Two-Player])
  end

  def start_simulation
    simulation = Simulation.new
    simulation.start_battle
  end

  def start_two_player
    simulation = Simulation.new
    simulation.start_battle
  end
end

Game.new
