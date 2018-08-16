API - constraints
of: aMorph topLeft: aPoint 
	
	| attr |
	attr := self attributesFor: aMorph.
	constraints add: (attr top cnEqual: aPoint y).
	constraints add: (attr left cnEqual: aPoint x).