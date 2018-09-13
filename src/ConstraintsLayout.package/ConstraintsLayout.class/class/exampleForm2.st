examples
exampleForm2

	| main constraintsLayout textBoxes labels vbox|
	
	<script>
	
	main := ComposableMorph new.
	main color: Color gray.
	constraintsLayout := ConstraintsLayout on: main.
	main layoutPolicy: constraintsLayout.

	textBoxes := (1 to: 5) collect: [ :i | main newTextEntryFor: nil getText: nil setText: nil help: nil  ].
	labels := (1 to: 5) collect: [ :i | main newLabel: 'Field' , i asString ].

	textBoxes do: [ :t | 
		t constraintsLayoutAttributes 
			height: 25;
			width: (75 percent) proportional;
			margin: 10].

	labels do: [ :l | 
		l constraintsLayoutAttributes 
			height: 20;
			width: (25 percent) proportional;
			margin: 15 ].

	vbox := VBox new.
	vbox color: Color red.

	labels with: textBoxes do: [ :l :t | |hbox|
		hbox := HBox new addMorph: l; addMorph: t; yourself.
		hbox constraintsLayoutAttributes width: 100 percent proportional.
		vbox addMorph: hbox.].

	vbox constraintsLayoutAttributes 
		width: 100 percent proportional;
		height: 100 percent proportional.

	main addMorph: vbox.
	
	main extent: 500@500.
	main openInWindow