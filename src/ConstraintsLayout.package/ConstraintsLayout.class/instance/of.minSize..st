API - constraints
of: aMorph minSize: aPoint 
	
	|attr|
	attr := self attributesFor: aMorph.
	constraints add: (attr width cnGEQ: aPoint x).
	constraints add: (attr height cnGEQ: aPoint y).	