private - calculating
doConfigureSolver
	
	usedConstraints := OrderedCollection new.

	solver := ClSimplexSolver new.
	morph submorphs 
		do: [ :each | usedConstraints addAll: (each constraintsLayoutAttributes constraintsFor: self) ].
	usedConstraints addAll: constraints.
	
	usedConstraints do: [ :each | solver addConstraint: each ].
	minimalExtent := width value @ height value.
	
	configured := true.