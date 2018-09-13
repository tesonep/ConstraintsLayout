conflicting
isConflictingWithEqualConstraint: aEqualValueLayoutConstraint

	^ aEqualValueLayoutConstraint target = target and: [ targetProperty = aEqualValueLayoutConstraint targetProperty ]