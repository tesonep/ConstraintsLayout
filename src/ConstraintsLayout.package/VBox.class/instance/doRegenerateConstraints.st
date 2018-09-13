initialization
doRegenerateConstraints

	| constraintLayout |
	
	constraintLayout := self layoutPolicy.
	constraintLayout clearConstraints.
	
	submorphs ifEmpty: [ ^self ].
			
	submorphs do: [ :each | 
		constraintLayout with:{ each } do: [ :am | am horizontalCenter cnEqual: (constraintLayout width / 2) ]].

	constraintLayout with: {submorphs first} do: [ :sm | sm top cnEqual: margin ].	

	constraintLayout verticalSequence: submorphs spacing: spacing.
	
	constraintLayout with: {submorphs last} do: [ :sm | 
		constraintLayout height cnGEQ: (sm bottom + margin)].	
	
	