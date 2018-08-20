baselines
baseline: spec
	<baseline>

	spec
		for: #common
		do: [ 
	
			spec
				baseline: 'Cassowary' 
				with: [ spec repository: 'github://Ducasse/Cassowary' ].

			spec package: 'ConstraintsLayout' with: [ spec requires: 'Cassowary'].
			
			spec
				group: 'default' with: #('ConstraintsLayout').
		]
