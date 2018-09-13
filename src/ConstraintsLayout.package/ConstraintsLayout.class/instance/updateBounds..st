private - calculating
updateBounds: aRectangle
	self removeBoundsConstraints.
	
	constraintWidth := width cnEqual: aRectangle width.
	constraintHeight := height cnEqual: aRectangle height.

	solver ifNotNil: [ 
		solver addConstraint: constraintWidth.
		solver addConstraint: constraintHeight].