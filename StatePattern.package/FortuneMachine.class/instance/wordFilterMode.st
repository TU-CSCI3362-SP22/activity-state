actions
wordFilterMode
	state = #Vended ifTrue:[self denyTransaction: 'You cant add to the filter after you vended!'].
	state = #HasInput ifTrue:[self denyTransaction: 'You have to add to the filter before adding input!'].
	state = #WordFilter ifTrue:[self denyTransaction: 'You are already in filter mode! Use vend to save your filter.'].
	state = #NoInput ifTrue:[state := #WordFilter].
