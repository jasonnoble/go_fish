require_relative 'card'

class Deck
  def initialize
    @cards = []
    ['seahorse', 'shark', 'clownfish',
     'purpletang', 'pufferfish', 'yellowtang',
     'octopus', 'whale', 'angelfish'].each do |type|
      4.times do
        @cards.push(Card.new(type))
      end
    end
    shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def deal(player)
    player.accept_card(@cards.pop)
  end
end
