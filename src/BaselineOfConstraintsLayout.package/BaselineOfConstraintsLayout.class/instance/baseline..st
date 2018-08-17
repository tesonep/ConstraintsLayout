baselines
baseline: spec
	<baseline>

	spec
		for: #common
		do: [ 
	
			spec
				baseline: 'BabelsbergS' 
				with: [ 
					spec repository: 'github://babelsberg/babelsberg-s/repository';
						  loads: 'Cassowary' ].

			spec package: 'ConstraintsLayout' with: [ spec requires: 'BabelsbergS'].
			
			spec
				group: 'default' with: #('ConstraintsLayout').
		]
