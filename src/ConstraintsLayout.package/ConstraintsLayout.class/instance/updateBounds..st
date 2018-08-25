private - updating
updateBounds: aRectangle
	self removeBoundsConstraints.
	solver addConstraint: (constraintWidth := width cnEqual: aRectangle width).
	solver addConstraint: (constraintHeight := height cnEqual: aRectangle height)