class Vector {
	var horizontal = 0.0
	var vertical = 0.0
	var magnitude = 0.0
	var direction = Degree(0)
	
	init(withMagnitude magnitude: Int, direction: Degree) {
		
	}
	init(withHorizontal: horizontal: Int, vertical: Int) {
	
	}
}

class PolarVector {
	
}

class RectangularVector {
	
}

enum Quadrant {
	case Quadrant1 = 1, Quadrant2, Quadrant3, Quadrant4
	func positiveX() -> Bool {
		switch self {
			case Quadrant1, Quadrant4:
				return true
			case Quadrant2, Quadrant3:
				return false
		} 
	}
	func positiveY() -> Bool {
		switch self {
			case Quadrant1, Quadrant2:
				return true
			case Quadrant3, Quadrant4:
				return false
		}
	}
}

struct Degree {
	var degree: Double = 0.0 {
		willSet {
			// Makes sure the degree is between 0 and 360
			
			if !(newValue < 360.0 && newValue > 0.0) {
				
				var validatedDegree = newValue
				func incrementOrDecrement {
					if validatedDegree >= 360.0 {
						newValue -= 360 
					} else if newValue <= 0.0 {
						validatedDegree += 360
					}
				}
				
				while newValue >= 360 || newValue <= 0.0 {
					incrementOrDecrement()
				}
				
				self.degree = validatedDegree
			}
		}
	}
	
	let quadrant: Quadrant {
		return Quadrant.fromRaw(Int(self.degree/90)+1)
	}
	
	static func domainConsciousInverseTan(tangent: Int, quadrant: Quadrant) -> Degree {
		
		var invtan = Degree(inverseTan(tangent))
		if !quadrant.positiveX {
			invtan.degree += 180
		}
		return invtan
	}
	static func domainConsciousInverseCos(cosine: Int, quadrant: Quadrant) -> Degree {
		
		var invcos = Degree(inverseTan(tangent))
		if !quadrant.positiveY {
			invcos.degree += 180
		}
		return invcos
	}
	static func domainConsciousInverseSin(sine: Int, quadrant: Quadrant) -> Degree {
		
		var invsin = Degree(inverseTan(tangent))
		if !quadrant.positiveX {
			invsin.degree += 180
		}
		return invsin
	}
}