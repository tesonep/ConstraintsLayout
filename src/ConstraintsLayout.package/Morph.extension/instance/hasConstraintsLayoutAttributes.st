*ConstraintsLayout
hasConstraintsLayoutAttributes
	
	self extension ifNil: [ ^ false ].
	
	^ self extension hasProperty: #constraintsLayoutAttributes