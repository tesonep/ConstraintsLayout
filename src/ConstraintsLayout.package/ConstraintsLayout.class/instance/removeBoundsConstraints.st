private - calculating
removeBoundsConstraints
	constraintHeight
		ifNotNil: [ 
		[ solver removeConstraint: constraintHeight ]
				on: KeyNotFound
				do: [ "If it does not exists. Do not care" ] ].
	constraintWidth
		ifNotNil: [ 
		[ solver removeConstraint: constraintWidth ]
				on: KeyNotFound
				do: [ "If it does not exists. Do not care" ] ]
			
	