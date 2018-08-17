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
	
	constraintsLayout addMorph: ok.
	constraintsLayout addMorph: cancel.
	
	constraintsLayout 
		of: ok size: 75@20;
		of: cancel size: 75@20;
		horizontalSequence: { ok. cancel } spacing: 15;
		with: { cancel } do: [ :cancelBtn | cancelBtn right cnEqual: 20 ].

	main openInWindow