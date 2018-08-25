API - constraints
with: aCollection do: aBlockClosure
	constraints
		add:
			(aBlockClosure valueWithEnoughArguments: (aCollection collect: [:each | each constraintsLayoutAttributes] ), {self} )