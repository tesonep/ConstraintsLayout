initialization
initialize
	
	super initialize.
	self layoutPolicy: (ConstraintsLayout on: self).
	
	self borderWidth: 0.
	margin := 0.
	spacing := 0.