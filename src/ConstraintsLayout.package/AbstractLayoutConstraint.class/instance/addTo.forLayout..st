constraints
addTo: aCollection forLayout: aConstraintsLayout

	| valueToUse constraint |
	valueToUse := value isProportional
		ifTrue: [ (aConstraintsLayout perform: ownerProperty) * value value ]
		ifFalse: [ value ].

	constraint := (target perform: targetProperty) perform: (self comparisonSelector) with: valueToUse.
	
	aCollection add: constraint.