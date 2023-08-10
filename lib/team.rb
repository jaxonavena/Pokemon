require 'active_support/all'
class Team
  include Enumerable
  TURN_OPTIONS = %w[Attack Defend Switch].freeze
  attr_accessor :pokemon, :active_pokemon, :team_name

  def initialize(pokemon, team_name)
    @pokemon = Array.wrap(pokemon).map(&:name).zip(Array.wrap(pokemon)).to_h
    @active_pokemon = @pokemon.values.first
    @team_name = team_name
  end

  def each(&block)
    @pokemon.values.each(&block)
  end

  def take_turn(opponent)
    switch_pokemon unless @active_pokemon.awake?
    user_choice = TTY::Prompt.new.select("Player #{@team_name} [#{@active_pokemon.name}]:", TURN_OPTIONS)
    case user_choice
    when 'Attack'
      @active_pokemon.attack(opponent.active_pokemon)
    when 'Defend'
      @active_pokemon.defend
    when 'Switch'
      switch_pokemon
    else
      puts 'Invalid Option'
    end
  end

  private

  def switch_pokemon
    selected_pokemon = TTY::Prompt.new.select("Switching #{@active_pokemon.name} for...", benched_pokemon)
    @active_pokemon = selected_pokemon
  end

  def benched_pokemon
    select(&:awake?) - [@active_pokemon]
  end
end
