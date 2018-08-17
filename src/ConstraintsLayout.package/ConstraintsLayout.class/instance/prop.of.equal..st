API - constraints
prop: aPropName of: aMorph equal: aValue
 
	| propLayout |
	propLayout := self attributesFor: aMorph.
	constraints add: ((propLayout perform: aPropName) cnEqual: aValue)