API - constraints
prop: aPropName of: aMorph max: aValue 

	| propLayout |
	
	propLayout := self attributesFor: aMorph.
	constraints add: ((propLayout perform: aPropName) cnLEQ: aValue)