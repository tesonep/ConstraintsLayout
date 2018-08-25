API-constraints-basic
prop: prop value: aValue

	self addConstraint: (EqualValueLayoutConstraint on: self value: aValue targetProperty: prop)