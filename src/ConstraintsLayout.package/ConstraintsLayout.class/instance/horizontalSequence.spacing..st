API - constraints
horizontalSequence: aCollection spacing: spacing 

	| layoutProps accummulated |
	layoutProps := aCollection collect: [ :each | self attributesFor: each ].

	accummulated := 0.
	
	layoutProps do: [ :each |
		accummulated = 0 ifFalse: [ constraints add: ( accummulated cnEqual: each left ) ].
		accummulated := each right + spacing
	].
