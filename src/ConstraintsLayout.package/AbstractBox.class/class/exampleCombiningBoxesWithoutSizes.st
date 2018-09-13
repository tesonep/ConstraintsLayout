as yet unclassified
exampleCombiningBoxesWithoutSizes

	| example |
	example := HBox new.
	example extent: 500@300.
	
	1 to: 3 do: [ :index |
		| vbox |
		vbox := VBox new. 

		vbox constraintsLayoutAttributes name: 'vbox' , index asString.
		vbox addMorph: (vbox newButtonFor: nil action: nil getEnabled: nil label: 'Btn1',index asString help: nil).
		vbox addMorph: (vbox newButtonFor: nil action: nil getEnabled: nil label: 'Btn2',index asString help: nil).
		vbox color: Color random.

		example addMorph: vbox.
	].

	example openInWindow