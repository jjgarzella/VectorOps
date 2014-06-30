class Vector
	def horizontal
		
	end
	def vertical
		
	end
	def magnitude
		
	end
	def direction
		
	end
end

class PolarVector
	def initialize(mag, dir)
		@magnitude = mag
		@direction = dir
	end
	def to_s
		anglechar = new Fixnum(2220)
		"<#@magnitude #anglechar #@direction>"
	end
	def magnitude
		@magnitude
	end
	def direction
		@direction
	end
	def horizontal
		magnitude*
	end
end

class RectangularVector

end