helper methods
dispensePrizes
	prizes do: [:each | Transcript show: each ].
	prizes removeAll.