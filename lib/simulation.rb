require_relative 'pokemon'
require_relative 'types'
require_relative 'team'
class Simulation
  attr_accessor :game_loop

  def initialize
    @available_pokemon = generate_list_of_pokemon
    @team1 = generate_team_of_six
    @team2 = generate_team_of_six
    set_opponents
    @game_loop = true
  end

  def start_battle
    announce_teams
    while @game_loop
      @team1.take_turn(1)
      @team2.take_turn(2)

      # TODO: take out
      @game_loop = false
    end
  end

  private

  def generate_list_of_pokemon
    pokemon_names = Pokemon.constants - [:Types, :Base]
    pokemon_names.collect do |pokemon|
      Pokemon.const_get(pokemon).new
    end
  end

  def generate_team_of_six
    Team.new(@available_pokemon.uniq.sample(6))
  end

  def announce_teams
    puts "\nTEAM 1:"
    @team1.pokemon.each { |pokemon| puts pokemon }
    puts "\nTEAM 2:"
    @team2.pokemon.each { |pokemon| puts pokemon }
  end

  def set_opponents
    @team1.opponent = @team2
    @team2.opponent = @team1
  end
end
