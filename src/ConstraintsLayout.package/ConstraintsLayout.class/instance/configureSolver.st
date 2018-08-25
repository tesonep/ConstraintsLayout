API - layout
configureSolver

	configured ifTrue: [ ^ self ].
	configured := true.

	self doConfigureSolver