API - layout
initialize

	super initialize.

	solver := ClSimplexSolver new.
	
	height := ClVariable new name: 'height'.
	width := ClVariable new name: 'width'.	
	
	configured := false.
	constraints := OrderedCollection new.
	attributes := Dictionary new.