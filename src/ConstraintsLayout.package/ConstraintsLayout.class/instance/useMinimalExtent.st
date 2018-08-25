API-calculating
useMinimalExtent
	
	self removeBoundsConstraints.
	self doConfigureSolver.
	
	morph extent: (minimalExtent + 5)