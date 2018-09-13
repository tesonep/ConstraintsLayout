API - calculating
minimalExtent
	self removeBoundsConstraints.
	self calculateSolver: true.
	
	^ minimalExtent