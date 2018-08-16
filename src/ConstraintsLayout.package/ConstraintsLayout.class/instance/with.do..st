API - constraints
with: aCollection do: aBlockClosure
	constraints
		add:
			(aBlockClosure valueWithEnoughArguments: (aCollection collect: [:each | self attributesFor: each] ), {self} )