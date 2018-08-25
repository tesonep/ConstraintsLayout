examples
exampleForm

	| main textBox button constraintsLayout otherButton |
	
	<script>
	
	main := ComposableMorph new.
	main extent: 400@400.
	main color: Color gray.
	constraintsLayout := ConstraintsLayout on: main.
	main layoutPolicy: constraintsLayout.

	textBox := main newTextEditorFor: nil getText: nil  setText: nil.
	button := main newButtonFor: nil action: nil getEnabled: nil label: 'A button' help: 'Some help'.
	otherButton := main newButtonFor: nil action: nil getEnabled: nil label: 'Other button' help: 'Some help'.
	
	main addMorph: textBox. 	
	main addMorph: button.
	main addMorph: otherButton.

	constraintsLayout
		of: textBox minSize: 75@75;
		of: textBox topLeft: 0@0;
		with: {button. textBox. otherButton} do:[:btn :tb :other :owner | tb height cnEqual: (owner height - other height - 10) strength: ClStrength weak];
		with: {button. textBox. otherButton} do:[:btn :tb :other :owner | tb width cnEqual: (owner width - btn width - 10) strength: ClStrength weak];

		with: {button. textBox. otherButton} do:[:btn :tb :other :owner | other top cnEqual: (tb bottom + 10)  strength: ClStrength weak];
		with: {button. textBox. otherButton} do:[:btn :tb :other :owner | other bottom cnEqual: (owner height - 5)];
		of: otherButton size: 100@30;

		with: {button. textBox. otherButton} do:[:btn :tb :other :owner | btn left cnEqual: (tb right + 5)  strength: ClStrength weak];
		of: button size: 100@30;

		yourself.

	main openInWindow