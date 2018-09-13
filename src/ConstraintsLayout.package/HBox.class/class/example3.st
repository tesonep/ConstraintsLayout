example
example3

	| example |
	example := self new.
	
	example spacing: 15.
	example margin: 15.

	example addMorph: (example newButtonFor: nil getState: nil action: nil arguments: nil getEnabled: nil label: 'Btn1' help: nil ).
	example addMorph: (example newButtonFor: nil getState: nil action: nil arguments: nil getEnabled: nil label: 'Btn2' help: nil ).
	example addMorph: (example newButtonFor: nil getState: nil action: nil arguments: nil getEnabled: nil label: 'Btn3' help: nil ).		
		
	example openInWindow.