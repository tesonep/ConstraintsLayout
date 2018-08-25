examples
acceptCancel

	| main ok cancel constraintsLayout |
	
	<script>
	
	main := ComposableMorph new.
	main extent: 400@400.
	main color: Color gray.
	constraintsLayout := ConstraintsLayout on: main.
	main layoutPolicy: constraintsLayout.

	ok := main newButtonFor: nil action: nil getEnabled: nil label: 'Ok'  help: nil.
	cancel := main newButtonFor: nil action: nil getEnabled: nil label: 'Cancel'  help: nil.

	main addMorph: ok.
	main addMorph: cancel.
		
	constraintsLayout horizontalSequence: { ok. cancel } spacing: 15.
	ok constraintsLayoutAttributes left: 30.
	
	main openInWindow