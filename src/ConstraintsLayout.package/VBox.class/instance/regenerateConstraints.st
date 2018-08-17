initialization
regenerateConstraints

	| size constraintLayout |
	
	constraintLayout := self layoutPolicy.
	constraintLayout clearConstraints.
	
	submorphs ifEmpty: [ ^self ].
	
	size := (constraintLayout height - (margin*2) - ((submorphs size - 1)*spacing)) / submorphs size.
	
	submorphs do: [ :each | 
		constraintLayout with:{ each } do: [ :am | am left cnEqual: 0 ].
		constraintLayout with:{ each } do: [ :am | am height cnEqual: size ].
		constraintLayout with:{ each } do: [ :am | am width cnEqual: constraintLayout width ] ].

	constraintLayout with: {submorphs first} do: [ :sm | sm top cnEqual: margin ].	

	constraintLayout verticalSequence: submorphs spacing: spacing.

	