API - calculating
calculateSolver: force

	| retries |
	
	retries := 3.

	[	(configured not or: force) ifTrue: [ 
			self doConfigureSolver].
	
		self hasValidResults or: [retries = 0]] whileFalse: [ configured:=false. retries:= retries - 1].
	
	(retries = 0) ifTrue: [ self error ]. 