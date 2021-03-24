require_relative 'card'

class DeckCards
    attr_accessor :cards
    def initialize
        suits = ['C', 'D', 'E', 'T']
        numbers = (1..13).to_a
        @cards = suits.map do|suit| 
            numbers.map do |number|
                Card.new(number, suit)
            end
        end.flatten
    end

    def shuffle
        @cards.shuffle!
    end

    def pop
        @cards.pop
    end

    def deal_hand
        hand = []
        n = 5
        n.times do
            hand.push(pop)
        end
        hand
    end
end

deck = DeckCards.new
deck.shuffle
pop_card = deck.pop

#print deck.cards
print pop_card.number
print pop_card.suit
print deck.deal_hand
