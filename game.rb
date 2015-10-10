require_relative './deck'
require_relative './player'

class Game
  def initialize
    @deck = Deck.new
    @players = []
  end

  def add_player(name)
    @players.push(Player.new(name))
  end

  def deal
    5.times do
      @players.each do |player|
        @deck.deal(player)
      end
    end
  end

  def players
    @players
  end

  def play_turn
    # the player asks the victim for a card
    player = @players.first
    type, victim = player.ask_for(@players[1..-1])
    cards = victim.fish_for(type)
    if cards.count == 0
      @deck.deal(player)
    else
      cards.each do |card|
        player.accept_card(card)
      end
    end
  end
end
