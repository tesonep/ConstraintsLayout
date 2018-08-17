adding
addBasicConstraints: const
	constraints add: (const width cnGEQ: 0).
	constraints add: (const height cnGEQ: 0).
	constraints add: (const top cnGEQ: 0).
	constraints add: (const left cnGEQ: 0).
	constraints add: (const width cnLEQ: width).
	constraints add: (const height cnLEQ: height).
	constraints add: (const top cnLEQ: height).
	constraints add: (const left cnLEQ: width)