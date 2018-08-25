examples
exampleForm3

	| main constraintsLayout textBoxes labels |
	
	<script>
	
	main := ComposableMorph new.
	main color: Color gray.
	constraintsLayout := ConstraintsLayout on: main.
	main layoutPolicy: constraintsLayout.

	textBoxes := (1 to: 5) collect: [ :i | main newTextEditorFor: nil getText: nil  setText: nil ].
	labels := (1 to: 5) collect: [ :i | main newLabel: 'Field' , i asString ].

	textBoxes do: [ :t | main addMorph: t ].
	labels do: [ :l | main addMorph: l ].	

	textBoxes do: [ :t | 
		constraintsLayout prop: #height of: t equal: 35.
		constraintsLayout with: { t } do: [ :tb :owner | tb right cnEqual: owner width - 10 ]. ].

	labels do: [ :l | 
		constraintsLayout prop: #height of: l equal: 20.
		constraintsLayout with: { l } do: [ :lab :owner | lab width cnEqual: 50 ].
		constraintsLayout with: { l } do: [ :lab :owner | lab left cnEqual: 15 ]. ].


	labels with: textBoxes do: [ :l :t | 
		constraintsLayout with: {l. t.} do: [:lab :tb | lab verticalCenter cnEqual: tb verticalCenter ].
		constraintsLayout with: {l. t.} do: [:lab :tb | (lab right + 15) cnEqual: tb left ] ].

	constraintsLayout prop: #top of: textBoxes first equal: 15.
	constraintsLayout verticalSequence: textBoxes spacing: 15.

	constraintsLayout useMinimalExtent.

	main openInWindow