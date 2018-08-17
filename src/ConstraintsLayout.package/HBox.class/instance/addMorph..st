initialization
addMorph: aMorph

	super addMorphBack: aMorph.
	self layoutPolicy addMorph: aMorph. 
	
	self regenerateConstraints.