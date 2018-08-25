initialization
addMorph: aMorph

	super addMorphBack: aMorph.	
	self regenerateConstraints.