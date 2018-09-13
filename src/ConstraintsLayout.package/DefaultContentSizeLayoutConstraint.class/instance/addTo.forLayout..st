constraints
addTo: aCollection forLayout: aConstraintsLayout

	| extent layout |
	
	layout := target morph layoutPolicy.
	(layout isNotNil and: [ layout isConstraintsLayout ]) ifTrue: [ 
		extent := target morph layoutPolicy minimalExtent.
		
		aCollection add: (target width cnEqual: extent x).
		aCollection add: (target height cnEqual: extent y).
	]