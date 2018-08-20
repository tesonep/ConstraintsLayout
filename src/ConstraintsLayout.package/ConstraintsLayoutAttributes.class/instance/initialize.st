private - updating
initialize

	super initialize.
	top := ClVariable newWith: morph top.
	left := ClVariable newWith: morph left.
	width := ClVariable newWith: morph width.
	height := ClVariable newWith: morph height.
	
	constraints := OrderedCollection new.