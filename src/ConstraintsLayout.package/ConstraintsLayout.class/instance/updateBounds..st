private - updating
updateBounds: aRectangle 
	
	constraintHeight ifNotNil: [ [solver removeConstraint: constraintHeight] on: KeyNotFound do: [ "If it does not exists. Do not care" ] ].
	constraintWidth ifNotNil: [ [solver removeConstraint: constraintWidth ] on: KeyNotFound do: [ "If it does not exists. Do not care" ] ].
	
	solver addConstraint: (constraintWidth := width cnEqual: aRectangle width).
	solver addConstraint: (constraintHeight := height cnEqual: aRectangle height).
	
	