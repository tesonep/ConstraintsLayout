API-constraints-basic
maxProp: prop value: aValue

	self addConstraint: (MaxValueLayoutConstraint on: self value: aValue targetProperty: prop)