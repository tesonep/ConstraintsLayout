API - layout
layout: aMorph in: aRectangle 
			
	| retries |
	
	(minimalExtent isNotNil and: [ (minimalExtent x > aRectangle width) 
		or: [minimalExtent y > aRectangle height] ]) ifTrue: [ ^ self ].
	
	retries := 3.
		
	[ 
	   self calculateWithBounds: aMorph.
		solver infeasibleRows ifNotEmpty: [ solver infeasibleRows logCr ].
	   solver infeasibleRows isNotEmpty and: [ retries > 0 ].		
	] whileTrue: [ configured := false. retries := retries - 1. ].
	
	aMorph submorphs 
		select: [ :each | each hasConstraintsLayoutAttributes ]
		thenDo: [ :each | each constraintsLayoutAttributes updateAttributes ].
	
