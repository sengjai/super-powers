# Write your code here!
class Animal
	attr_accessor :num_legs

	def initialize(num_legs)
		@num_legs = num_legs
	end

	def breathe
		puts "inhale and exhale"
	end

	def warm_blooded?
		return true
	end
end

class Mammal < Animal

	def initialize(num_legs)
		super
	end

	def warm_blooded?
		super
	end


end

class Amphibian < Animal
	def initialize(num_legs)
		super
	end

	def warm_blooded?
		return false
	end

end

class Primate < Mammal
	def initialize(num_legs)
		@num_legs = 2
	end

	def warm_blooded?
		super
	end

end

class Frog < Amphibian
	def initialize(num_legs)
		#@num_legs = num_legs
		super
	end

	def warm_blooded?
		return false
	end

end

class Bat < Mammal
	def initialize(num_legs)
		#@num_legs = num_legs
		super
	end

	def warm_blooded?
		super
	end
end

class Chimpanzee < Primate

	def initialize(num_legs)
		#@num_legs = num_legs
		#super #It will inherit the number of legs Primate has
		@num_legs = num_legs #it will take a new set of legs
	end

	def warm_blooded?
		super
	end
end

chimp = Chimpanzee.new(4)
p chimp.num_legs
p chimp.warm_blooded?

frog = Frog.new(2)
p frog.num_legs
p frog.warm_blooded?
# p chimp.breathe

