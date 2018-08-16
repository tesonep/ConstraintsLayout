API - layout
configureSolver

	configured ifTrue: [ ^ self ].

	configured := true.
	constraints do: [ :each | solver addConstraint: each ].