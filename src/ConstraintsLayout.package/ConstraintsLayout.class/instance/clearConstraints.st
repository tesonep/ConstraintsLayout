API - constraints
clearConstraints
	
	constraints removeAll.
	constraintHeight := nil.
	constraintWidth := nil.
	attributes valuesDo: [ :each | self addBasicConstraints: each ].
	configured := false.