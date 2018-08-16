API - layout
layout: aMorph in: aRectangle 
			
	[self configureSolver.	
	self updateBounds: aRectangle.] on: ClError do: [ ^ self ].
	
	aMorph submorphsDo: [ :each | self attributesFor: each ifPresent: #updateAttributes ].
	
