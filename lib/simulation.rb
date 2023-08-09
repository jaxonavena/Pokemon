Dir.glob(File.join(File.join(__dir__, 'pokemon'), '**', '*.rb')).each do |file_path|
  require file_path
end

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
    pokemon_names = []

    # Iterate through each .rb file in the pokemon folder
    # Extract the pokemon name from the file name
    pokemon_name = File.basename(file_path).capitalize
    pokemon_name.gsub!('.rb', '')

    class_object = Object.const_get(pokemon_name)
    instance = class_object.new
    pokemon_names << instance
    pokemon_names
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
