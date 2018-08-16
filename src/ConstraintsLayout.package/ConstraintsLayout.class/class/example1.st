examples
example1
	<script>
	| constraintsLayout main morph1 morph2 morph3 |
	(main := Morph new)
		color: Color white;
		extent: 300 @ 300.
	constraintsLayout := ConstraintsLayout on: main.
	main layoutPolicy: constraintsLayout.
	
	(morph1 := Morph new) color: Color green.		
	(morph2 := Morph new) color: Color blue.	
	(morph3 := Morph new) color: Color orange.
		
	constraintsLayout addMorph: morph1.	
	constraintsLayout addMorph: morph2.	
	constraintsLayout addMorph: morph3.	
	
	main addMorph: morph1.
	main addMorph: morph2.
	main addMorph: morph3.

	constraintsLayout
		prop: #width of: morph1 min: 25;
		prop: #height of: morph1 min: 20;
		prop: #height of: morph1 max: 30;
		prop: #top of: morph1 max: 10;

		prop: #left of: morph1 min: 5;
		prop: #width of: morph2 max: 75;
		prop: #width of: morph2 min: 25;
		horizontalSequence: {morph1. morph2} spacing: 15;
		
		with: { morph1 } do: [ :m1 :owner | m1 width cnEqual: (owner width / 2) ];
		with: { morph2 } do: [ :m2 :owner | m2 height cnEqual: (owner height * 0.75) ];
		with: { morph3 } do: [ :m3 :owner | m3 height cnEqual: 30 ];
		with: { morph3 } do: [ :m3 :owner | m3 width cnEqual: 30 ];
		with:
			{morph1.
			morph2.
			morph3}
			do: [ :m1 :m2 :m3 :owner | m3 top cnEqual: m1 bottom + 15 ];
		with:
			{morph1.
			morph2.
			morph3}
			do: [ :m1 :m2 :m3 :owner | m3 right cnEqual: m2 left - 15 ];
			yourself.
	main openInWindow