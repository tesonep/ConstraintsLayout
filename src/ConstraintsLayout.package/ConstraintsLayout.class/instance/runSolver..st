API - layout
runSolver: aMorph

	[	self configureSolver.
		self updateBounds: aMorph layoutBounds ]
		on: ClError
		do: [ ^ self ]