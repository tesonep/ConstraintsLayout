adding
addMorph: aMorph
	| const |
	const := ConstraintsLayoutAttributes on: aMorph.
	attributes at: aMorph put: const.
	self addBasicConstraints: const.
