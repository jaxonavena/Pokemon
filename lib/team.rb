class Team
  attr_accessor :pokemon

  def initialize(pokemon)
    @pokemon = pokemon
  end

  def take_turn
    #put up options for user
    show_options

    #case (attack, defend, etc)
  end

  private

  def show_options
    options = %w[Attack Defend]
    options.each { |option| puts option }
  end
end