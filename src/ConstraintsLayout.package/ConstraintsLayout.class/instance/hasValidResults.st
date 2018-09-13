private - calculating
hasValidResults
	
	
	(usedConstraints allSatisfy: [ :each | each isFullfilled ]) 
		ifFalse: [ ((usedConstraints reject: #isFullfilled) collect: [ :each | each -> each expression numericValue ]) logCr ].

	^ usedConstraints allSatisfy: [ :each | each isFullfilled ] .
	
	