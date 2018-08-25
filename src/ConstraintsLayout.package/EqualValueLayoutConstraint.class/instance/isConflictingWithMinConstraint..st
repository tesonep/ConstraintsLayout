conflicting
isConflictingWithMinConstraint: aMinValueLayoutConstraint

	^ aMinValueLayoutConstraint target = target
		and: [ aMinValueLayoutConstraint targetProperty = targetProperty ]