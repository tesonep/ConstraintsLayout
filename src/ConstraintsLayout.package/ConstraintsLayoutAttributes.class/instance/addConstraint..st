API-constraints-basic
addConstraint: aConstraint

	constraints := constraints reject: [ :each | each isConflictingWith: aConstraint ].
	constraints add: aConstraint