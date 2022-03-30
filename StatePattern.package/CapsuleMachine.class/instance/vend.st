actions
vend
	state = #Vending 	ifTrue: [ self showPrizes. state := #NoInput ].
	state = #HasInput 	ifTrue: [ self denyTransaction ].
	state = #NoInput 	ifTrue: [ self denyTransaction ].