require 'active_support/all'
class Team
  include Enumerable
  TURN_OPTIONS = %w[Attack Defend Switch].freeze
  attr_accessor :pokemon, :active_pokemon, :opponent

  def initialize(pokemon)
    @pokemon = Array.wrap(pokemon).map(&:name).zip(Array.wrap(pokemon)).to_h
    @active_pokemon = @pokemon.values.first
    @opponent = nil
  end

  def each(&block)
    @pokemon.values.each(&block)
  end

  def take_turn(player_id)
    user_choice = TTY::Prompt.new.select("Player #{player_id} [#{@active_pokemon.name}]:", TURN_OPTIONS)
    case user_choice
    when 'Attack'
      @active_pokemon.attack(@opponent.active_pokemon)
    when 'Defend'
      @active_pokemon.defend
    when 'Switch'
      switch_pokemon
    else
      puts 'Invalid Option'
    end
  end

  private

  # Will take an array and output a numbered list of each element
  # br is the optional breakline
  def list_options(options, br = false)
    puts "\n----------------" if br
    i = 0
    options.each do |option|
      i += 1
      puts "#{i}. #{option}"
    end
  end

  def switch_pokemon
    selected_pokemon = TTY::Prompt.new.select("Switching #{@active_pokemon.name} for...", @pokemon.keys - [@active_pokemon])
    @active_pokemon = @pokemon[selected_pokemon] || @active_pokemon
  end
end
