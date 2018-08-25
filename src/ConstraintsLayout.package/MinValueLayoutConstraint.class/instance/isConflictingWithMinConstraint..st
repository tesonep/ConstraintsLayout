conflicting
isConflictingWithMinConstraint: aMinValueLayoutConstraint 
	
	^ aMinValueLayoutConstraint target = target and: [ targetProperty = aMinValueLayoutConstraint targetProperty ]