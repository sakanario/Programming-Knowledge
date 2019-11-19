module Circle
	PI = 3.14
	def Circle.area(radius)
		PI * radius**2
	end
	
	def Circle.circumference(radius)
		2 * PI * radius
	end
end

HOW TO INVOKE
puts Circle::PI
puts Circle::area(7)
puts  Circle::circumference(7)
#or
puts Circle.area(7)
puts Circle.circumference(7)

REQUIRE,INCLUDE, dan EXTENDS
 REQUIRE
	ada yang udh ada di interpreter, contoh:
	puts Math::PI
	
	ada yang harus di require dulu, contohh
	require 'date'
	puts Date::today
 
 INCLUDE
	class Angle
		include Math
		attr_accessor :radians
		
		def initialize(radians)
			@radians = radians
		end
		
		def cosine
			cos(@radians) # kalo pake include, manggil method di module cukup nama methodnya aja 
		end
	end
	
	acute = Angle.new(7)
	puts acute.cosine
	
	COMBINING MODULE WITH CLASS 
		module Action
			def jump
				@distance = rand(4) + 2
				puts "I jumped forward #{@distance} feet"
			end
		end
		
		class Cat 
			include Action
			attr_reader :name
			
			def initialize(name)
				@name = name
			end			
		end
		
		Mosky = Rabbit.new("Mosky")
		Mosky.jump
		

		
		
		
		
		
			
	
	
	