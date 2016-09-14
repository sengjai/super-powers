module SuperPowers
	attr_accessor :magic_points

	def initialize
		@magic_points = magic_points
	end

	def magic()
		puts "I got magic points #{@magic_points} bro"
	end

	def use_laser_vision()
		if @magic_points > 5
			puts "I have laser vision"
		else
			puts "You don't have enough power yet"
		end	
	end
end

class Hero
	include SuperPowers

	def add_magic()
		@magic_points =+ rand(1..10)
	end

	def magic()
		puts "I got magic points #{@magic_points} bro"
	end
end

hero = Hero.new
hero.add_magic()
hero.magic()
hero.use_laser_vision()

#SuperPowers.magic()
#hero.magic() #This is a class method