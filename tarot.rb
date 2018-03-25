class TrumpCard < Object
	attr_accessor :name

	def initialize(name)
		self.name = name
	end

	def to_s
		"#{self.name}"
	end

	
end


class NormalCard
	attr_accessor :rank, :suit

	def initialize(rank, suit)
		self.rank = rank
		self.suit = suit
	end

	def to_s
		 "#{self.rank} of #{self.suit}"
	end
end

class Deck


	
	def initialize
		@another_var = 9
		
		suits = %w(wands cups swords pentacles)
		ranks = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'page', 'knight', 'queen', 'king']
		names = %w(Fool Magician High_Priestess Empress Emperor Hierophant Lovers Chariot Strength Hermit Wheel_of_Fortune Justice Hanged_Man Death Temperance Devil Tower Star Moon Sun Judgement World)
		@cards = []

		suits.each do |suit|
			ranks.each do |rank|
				@cards << NormalCard.new(rank, suit)	
			end
		end

		names.each do |name|
			@cards << TrumpCard.new(name)
		end
	end

	def deal
		new_ary = @cards.shuffle.shift(5)
		return new_ary
	end

  #def to_hash
  	#hash_array = []
  	#@cards.each do |card|

      #image_name = card.to_s.gsub(' ', '-') + '.jpg'

  		#hash_array << {  :name => card.to_s , image: image_name  }
  	#end

		#hash_array
  #end




end




deck = Deck.new
spread = deck.deal
puts spread

