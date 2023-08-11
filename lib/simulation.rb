require_relative 'pokemon'
require_relative 'types'
require_relative 'team'
class Simulation
  attr_accessor :game_over

  def initialize
    @available_pokemon = generate_list_of_pokemon
    @teams = 2.times.collect { |i| generate_team_of_six(i + 1) }
    @game_over = false
  end

  def start_battle
    announce_teams
    until @game_over
      @teams.first.take_turn(@teams.last)
      @teams.last.take_turn(@teams.first)

      @game_over = @teams.any? do |team|
        team.all?(&:fainted?)
      end
    end
    puts 'GAME OVER'
  end

  private

  def generate_list_of_pokemon
    pokemon_names = Pokemon.constants - [:Types, :Base]
    pokemon_names.collect do |pokemon|
      Pokemon.const_get(pokemon).new
    end
  end

  def generate_team_of_six(team_name)
    Team.new(@available_pokemon.uniq.sample(6), team_name)
  end

  def announce_teams
    @teams.each do |team|
      puts "Team #{team.team_name}:"
      puts team.pokemon.values.join(', ')
    end
  end
end
