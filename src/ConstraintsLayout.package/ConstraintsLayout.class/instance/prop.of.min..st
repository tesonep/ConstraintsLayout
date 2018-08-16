API - constraints
prop: aPropName of: aMorph min: aValue
 
	| propLayout |
	propLayout := self attributesFor: aMorph.
	constraints add: ((propLayout perform: aPropName) cnGEQ: aValue)