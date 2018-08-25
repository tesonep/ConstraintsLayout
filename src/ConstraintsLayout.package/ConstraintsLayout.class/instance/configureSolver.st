API - layout
configureSolver

	configured ifTrue: [ ^ self ].

	solver := ClSimplexSolver new.
	configured := true.
	
	morph submorphs 
		do: [ :each | constraints addAll: (each constraintsLayoutAttributes constraintsFor: self) ].
	
	constraints do: [ :each | solver addConstraint: each ].