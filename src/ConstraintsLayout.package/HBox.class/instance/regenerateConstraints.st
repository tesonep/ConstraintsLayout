initialization
regenerateConstraints

	| size constraintLayout |
	
	constraintLayout := self layoutPolicy.
	constraintLayout clearConstraints.
	
	submorphs ifEmpty: [ ^self ].
	
	size := (constraintLayout width / submorphs size) - (margin*2).
	submorphs do: [ :each | 
		constraintLayout with:{ each } do: [ :am | am top cnEqual: 0 ].
		constraintLayout with:{ each } do: [ :am | am width cnEqual: size ].
		constraintLayout with:{ each } do: [ :am | am height cnEqual: constraintLayout height ] ].

	constraintLayout with: {submorphs first} do: [ :sm | sm left cnEqual: margin ].	

	constraintLayout horizontalSequence: submorphs spacing: spacing.

	