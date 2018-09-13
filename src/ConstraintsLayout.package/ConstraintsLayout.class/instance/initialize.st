initialization
initialize

	super initialize.
	
	height := ClVariable new name: 'height'.
	width := ClVariable new name: 'width'.	
	
	configured := false.
	constraints := OrderedCollection new.