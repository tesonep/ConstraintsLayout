API - layout
layout: aMorph in: aRectangle 
			
	| retries |
	
	retries := 3.
		
	[ 
	   self runSolver: aMorph.
	   solver infeasibleRows isNotEmpty and: [ retries > 0 ].
	] whileTrue: [ configured := false. retries := retries - 1. ].
	
"	attributes values anyOne logCr.
	{ width value. height value } logCr.
	constraints logCr.
	solver infeasibleRows logCr.
"		
	aMorph submorphsDo: [ :each | self attributesFor: each ifPresent: #updateAttributes ].
	
