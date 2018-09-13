accessing
regenerateConstraints

	submorphs ifEmpty: [ ^ self ].
	self doRegenerateConstraints.