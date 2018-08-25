API-constraints-basic
minProp: prop value: aValue

	self addConstraint: (MinValueLayoutConstraint on: self value: aValue targetProperty: prop)