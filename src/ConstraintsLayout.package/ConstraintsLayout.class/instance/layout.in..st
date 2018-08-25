API - layout
layout: aMorph in: aRectangle 
			
	| retries |
	
	retries := 3.
		
	[ 
	   self runSolver: aMorph.
		solver infeasibleRows ifNotEmpty: [ solver infeasibleRows logCr ].
	   solver infeasibleRows isNotEmpty and: [ retries > 0 ].		
	] whileTrue: [ configured := false. retries := retries - 1. ].
	
	aMorph submorphs 
		select: [ :each | each hasConstraintsLayoutAttributes ]
		thenDo: [ :each | each constraintsLayoutAttributes updateAttributes ].
	
