
class Card
    attr_accessor :number, :suit
    def initialize(number, suit)
        @number = number
        @suit = suit
    end
end

class CarDeck #crear clase baraja en el archivo baraja.rb
    attr_accessor :cards
    def initialize(cards) #con el atributo cartas
        @cards = [] #el cual será un arreglo
        #al crear el constructor (initialize)
        #se deben generar todas las combinaciones de números
        #y pinta y guardarse en el arreglo cartas
        
        13.times do |i| #itero las 13 veces
            i += 1 #la iteración la aumento en 1 
        @cards.push(Card.new(i, 'C'))
        end #instancio el objeto del archivo Card y le paso
        #la iteración como número y la pinta
        #y lo guardo en el arreglo cartas
        
        13.times do |i|
            i += 1 #vuelvo a iterar y aumento en 1 otra vez
        @cards.push(Card.new(i, 'D'))
        end #vuelvo a instanciar el objeto
        #pasandole la iteración q es el número y la pinta
        #y lo guardo en el arreglo cartas
        
        13.times do |i|
            i += 1
        @cards.push(Card.new(i, 'E'))
        end
        
        13.times do |i|
            i += 1
        @cards.push(Card.new(i, 'T'))
        end
    end

    def shuffle_card #creo el método barajar "shuffle" que debe desordenar
        #el arreglo de cartas
        @cards.shuffle! #desordeno con shuffle el arreglo de cartas
    end

    def take_card #creo el metodo sacar carta que permite retirar la primera carta
        #de la bajara con pop
        @cards.pop #del arreglo cartas permite sacar la primera carta con pop
    end

    def take_hand(number_of_cards = 5)#metodo "repartir mano" que devolverá un arreglo con las
        #primeras 5 cartas de la baraja lo defino con 5
        @cards.pop(number_of_cards)#el arreglo con las primeras 5 cartas
        
    end
end

cardeck = CarDeck.new('cartas')
puts cardeck.shuffle_card
puts cardeck.take_card
puts cardeck.take_hand


