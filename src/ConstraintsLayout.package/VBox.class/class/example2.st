example
example2

	| example |
	example := self new.
	example extent: 300 @ 300.

	example addMorph: (example newButtonFor: nil getState: nil action: nil arguments: nil getEnabled: nil label: 'Btn1' help: nil ).
		
	example openInWindow.