helper methods
dispensePrizes
	| censoredPrizes filtering |
	self preparePrizes.
	Transcript clear.
	Transcript open.
	Transcript show: 'PRIZES BELOW!!!!!!!'; cr.
	censoredPrizes := prizes collect: [ :each |
		filtering := each.
		filteredWords do: [ :filtered |
			(each includesSubstring: filtered) 
			ifTrue: (filtering := '[REDACTED]').
			 ].
		filtering.
		 ].
	censoredPrizes do: [:each | 
		Transcript show: each.
		Transcript cr. ].
	prizes removeAll.