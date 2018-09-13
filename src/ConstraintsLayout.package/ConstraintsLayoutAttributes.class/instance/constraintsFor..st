adding
constraintsFor: layout
	| result |

	result := OrderedCollection new.

	result add: (width cnGEQ: 0).
	result add: (height cnGEQ: 0).
	result add: (top cnGEQ: 0).
	result add: (left cnGEQ: 0).
	result add: (width cnLEQ: layout width).
	result add: (height cnLEQ: layout height).
	result add: (top cnLEQ: layout height).
	result add: (left cnLEQ: layout width).

	constraints do: [ :each | each addTo: result forLayout: layout ].

	(MinimalContentSizeLayoutConstraint on: self)
		addTo: result forLayout: layout.
	
	^ result
	
