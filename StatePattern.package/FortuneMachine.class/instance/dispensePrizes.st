helper methods
dispensePrizes
	self preparePrizes.
	Transcript open.
	Transcript clear.
	Transcript show: 'YOUR AMAZING FORTUNES:'.
	Transcript cr.
	prizes do: [:each | Transcript show: each. Transcript cr. ].
	prizes removeAll.