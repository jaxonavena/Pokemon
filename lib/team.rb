class Team
  TURN_OPTIONS = %w[Attack Defend Switch].freeze
  attr_accessor :pokemon, :active_pokemon, :opponent

  def initialize(pokemon)
    @pokemon = pokemon
    @active_pokemon = @pokemon.first
    @opponent = nil
  end

  def take_turn(player_id)
    print "\nPlayer #{player_id}:"
    list_options(TURN_OPTIONS, true)
    user_choice = gets.chomp
    case user_choice
    when '1'
      @active_pokemon.attack(@opponent.active_pokemon)
    when '2'
      @active_pokemon.defend
    when '3'
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
    available_pokemon = @pokemon - [@active_pokemon]
    pokemon_name = TTY::Prompt.new.select("Switching #{@active_pokemon.name} for...", available_pokemon.collect { |pokemon| pokemon.name } )
    @active_pokemon = available_pokemon.select { |pokemon| pokemon.name == pokemon_name }
  end
end
