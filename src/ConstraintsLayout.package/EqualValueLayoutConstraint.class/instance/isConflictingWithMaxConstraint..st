conflictings
isConflictingWithMaxConstraint: aMaxValueLayoutConstraint

	^ aMaxValueLayoutConstraint target = target
		and: [ aMaxValueLayoutConstraint targetProperty = targetProperty ]