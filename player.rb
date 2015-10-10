class Player
  def initialize(name)
    @name = name
    @hand = []
  end

  def name
    @name
  end

  def accept_card(card)
    @hand.push(card)
  end

  def ask_for(other_players)
    # should return the player we want to ask
    # and the card we want to ask for
    type = @hand.map do |card|
      card.type
    end.sample
    [type, other_players.sample]
  end

  def fish_for(type)
    @hand
  end
end
