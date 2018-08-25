API - layout
doConfigureSolver
	solver := ClSimplexSolver new.
	morph submorphs do: [ :each | constraints addAll: (each constraintsLayoutAttributes constraintsFor: self) ].
	constraints do: [ :each | solver addConstraint: each ].
	minimalExtent := width value @ height value