require 'active_support/all'
require 'tty'
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
    user_choice = TTY::Prompt.new.select("Player #{@team_name} [#{@active_pokemon.name}]: #{'🟢' * select(&:awake?).count} #{'❌' * select(&:fainted?).count}", TURN_OPTIONS)
    case user_choice
    when 'Attack'
      damage, effectiveness = opponent.active_pokemon.defend(*@active_pokemon.attack)
      effectiveness_message = effectiveness.blank? ? "" : ", it was #{effectiveness} effective!"
      # box = TTY::Box.frame "#{@active_pokemon}", "used #{@active_pokemon.type.join('/')}-attack", effectiveness_message, title: "Attacking" ,padding: 3, align: :center

      puts "#{@active_pokemon} used #{@active_pokemon.type.join('/')}-attack #{effectiveness_message}"
      if opponent.active_pokemon.fainted?
        puts "#{opponent.active_pokemon} fainted!"
      else
        puts "#{opponent.active_pokemon} is now at #{opponent.active_pokemon.hp} HP!"
      end
    when 'Defend'
      @active_pokemon.defending = true
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
