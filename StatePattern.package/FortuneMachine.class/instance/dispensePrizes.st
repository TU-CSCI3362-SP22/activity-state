helper methods
dispensePrizes
	Transcript show: 'PRIZES BELOW!!!!!!!'; cr.
	prizes do: [:each | Transcript show: each. Transcript cr. ].
	prizes removeAll.