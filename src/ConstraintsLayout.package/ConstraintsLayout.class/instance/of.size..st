API - constraints
of: aMorph size: aPoint 
	
	| attr |
	attr := self attributesFor: aMorph.
	constraints add: (attr width cnEqual: aPoint x).
	constraints add: (attr height cnEqual: aPoint y)	