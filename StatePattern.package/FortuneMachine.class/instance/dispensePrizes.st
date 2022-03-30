helper methods
dispensePrizes
	| censored filtering |
	censored := OrderedCollection new.
	self preparePrizes.
	Transcript open.
	Transcript clear.
	Transcript show: 'YOUR AMAZING FORTUNES:'.
	Transcript cr.
	censored addAll: (prizes collect: [ :prize |
		filtering := prize.
		filteredWords do: [ :word |
			(prize includesSubstring: word) ifTrue: [ filtering := '[REDACTED]' ].
			 ].
		filtering.
		]).
	censored do: [:each | 
		Transcript show: each. Transcript cr. ].
	prizes removeAll.