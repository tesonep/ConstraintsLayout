API - layout
layout: aMorph in: aRectangle 
	
	| rectToUse |		
	minimalExtent ifNil: [ self minimalExtent ].	
	
	((minimalExtent x > aRectangle width) 
		or: [minimalExtent y > aRectangle height]) 
		ifTrue: [ 
			'Using Min Extent:' , minimalExtent asString.
			rectToUse := 0@0 corner: minimalExtent ] 
		ifFalse: [ rectToUse := aMorph layoutBounds].
	
	self calculateWithBounds: rectToUse.
	
	aMorph submorphs 
		select: [ :each | each hasConstraintsLayoutAttributes ]
		thenDo: [ :each | each constraintsLayoutAttributes updateAttributes ].
	
