*ConstraintsLayout
constraintsLayoutAttributes
	^ self assureExtension assureOtherProperties
		at: #constraintsLayoutAttributes
		ifAbsentPut: [ ConstraintsLayoutAttributes on: self ]