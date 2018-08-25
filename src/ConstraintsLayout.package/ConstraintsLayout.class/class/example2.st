examples
example2
	<script>
	| main morphs constraintsLayout|
	main := Morph new.
	main
		color: Color white;
		extent: 800 @ 600.
	constraintsLayout := ConstraintsLayout on: main.
	main layoutPolicy: constraintsLayout.
	morphs := OrderedCollection new.

	(1 to: 20)
		do: [ :i | 
			| m |
			m := Morph new.
			m color: Color random.
			main addMorph: m.
			morphs add: m ].

	morphs
		do: [ :each | 
			constraintsLayout with: {each} do: [ :m1 :owner | m1 width cnEqual: (owner width / (morphs size / 2)) ].
			constraintsLayout with: {each} do: [ :m1 :owner | m1 height cnEqual: (owner height / 2) ] ].

	constraintsLayout horizontalSequence: (morphs first: 10) spacing: 2.
	(morphs allButFirst: 10) do:[ :each | constraintsLayout with: {each} do: [ :m1 :owner | m1 top cnEqual: owner height / 2 ] ].
	
	constraintsLayout horizontalSequence: (morphs allButFirst: 10) spacing: 2.
	
	main openInWindow