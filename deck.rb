require_relative 'card'

class Deck
    def initialize
        @deck = []
        ['Corazón', 'Diamante', 'Espada', 'Trébol'].each do |color|
            (1..13).each do |number|
                @deck << Card.new(number, color)
            end
        end
    end

    def shuffle_deck
        @deck.shuffle! 
    end

    def retire
        @deck.pop
    end

    def draw
        random_deck = []
        5.times do
            random_deck.push(retire)
        end
        random_deck.each do |card|
            puts "#{card.number} - #{card.color}"
        end
    end
end

new_deck = Deck.new
new_deck.shuffle_deck
new_deck.draw
