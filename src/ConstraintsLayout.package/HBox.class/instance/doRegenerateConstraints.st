initialization
doRegenerateConstraints

	| constraintLayout |
	
	constraintLayout := self layoutPolicy.
	constraintLayout clearConstraints.
	
	submorphs ifEmpty: [ ^self ].
	
	submorphs do: [ :each | 
		constraintLayout with:{ each } do: [ :am | am verticalCenter cnEqual: (constraintLayout height / 2) ]].

	constraintLayout with: {submorphs first} do: [ :sm | sm left cnEqual: margin ].	

	constraintLayout horizontalSequence: submorphs spacing: spacing.

	constraintLayout with: {submorphs last} do: [ :sm | 
		constraintLayout width cnGEQ: (sm right + margin)].	
