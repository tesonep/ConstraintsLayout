conflictings
isConflictingWithEqualConstraint: anEqualValueLayoutConstraint

	^ anEqualValueLayoutConstraint target = target and: [ anEqualValueLayoutConstraint targetProperty = targetProperty ]