helper methods
preparePrizes
	library addAll: inputs.
	(inputs size) timesRepeat: [ prizes add: (library atRandom) ].
	inputs removeAll.