conflicting
isConflictingWithMaxConstraint: aMaxValueLayoutConstraint

	^ aMaxValueLayoutConstraint target = target and: [ targetProperty = aMaxValueLayoutConstraint targetProperty ]