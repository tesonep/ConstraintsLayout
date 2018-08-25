API - constraints
verticalSequence: aCollection spacing: spacing 

	| layoutProps accummulated |
	layoutProps := aCollection collect: [ :each | each constraintsLayoutAttributes ].

	accummulated := 0.
	
	layoutProps do: [ :each |
		accummulated = 0 ifFalse: [ constraints add: ( accummulated cnEqual: each top ) ].
		accummulated := each bottom + spacing
	].
