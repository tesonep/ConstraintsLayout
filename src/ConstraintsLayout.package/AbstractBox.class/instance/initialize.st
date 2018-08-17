initialization
initialize
	
	super initialize.
	self layoutPolicy: (ConstraintsLayout on: self).
	
	margin := 0.
	spacing := 0.