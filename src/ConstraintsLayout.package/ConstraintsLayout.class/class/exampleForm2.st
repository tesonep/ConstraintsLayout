examples
exampleForm2

	| main constraintsLayout textBoxes labels |
	
	<script>
	
	main := ComposableMorph new.
	main extent: 400@400.
	main color: Color gray.
	constraintsLayout := ConstraintsLayout on: main.
	main layoutPolicy: constraintsLayout.

	textBoxes := (1 to: 5) collect: [ :i | main newTextEntryFor: nil getText: nil setText: nil help: nil  ].
	labels := (1 to: 5) collect: [ :i | main newLabel: 'Field' , i asString ].

	textBoxes do: [ :t | 
		main addMorph: t.
		constraintsLayout addMorph: t ].
	labels do: [ :l | main addMorph: l.
		constraintsLayout addMorph: l ].	

	textBoxes do: [ :t | 
		constraintsLayout prop: #height of: t equal: 25.
		constraintsLayout with: { t } do: [ :tb :owner | tb width cnEqual: owner width * 0.75 -10 ].
		constraintsLayout with: { t } do: [ :tb :owner | tb right cnEqual: owner width - 10 ]. ].

	labels do: [ :l | 
		constraintsLayout prop: #height of: l equal: 20.
		constraintsLayout with: { l } do: [ :lab :owner | lab width cnEqual: owner width * 0.25 -10 ].
		constraintsLayout with: { l } do: [ :lab :owner | lab left cnEqual: 15 ]. ].


	labels with: textBoxes do: [ :l :t | 
		constraintsLayout with: {l. t.} do: [:lab :tb | lab verticalCenter cnEqual: tb verticalCenter ] ].

	constraintsLayout prop: #top of: textBoxes first equal: 15.
	constraintsLayout verticalSequence: textBoxes spacing: 15.


	main openInWindow