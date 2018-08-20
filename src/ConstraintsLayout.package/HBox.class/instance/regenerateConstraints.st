initialization
regenerateConstraints

	| constraintLayout |
	
	constraintLayout := self layoutPolicy.
	constraintLayout clearConstraints.
	
	submorphs ifEmpty: [ ^self ].
	
	submorphs do: [ :each | 
		constraintLayout with:{ each } do: [ :am | am verticalCenter cnEqual: (constraintLayout height / 2) ].
		constraintLayout with:{ each } do: [ :am | am height cnEqual: constraintLayout height ] ].

	constraintLayout with: {submorphs first} do: [ :sm | sm left cnEqual: margin ].	

	constraintLayout horizontalSequence: submorphs spacing: spacing.

	