actions
vend
	state = #Vending 	ifTrue: [ self dispensePrizes. state := #NoInput. ].
	state = #HasInput 	ifTrue: [ self denyTransaction: 'You must submit your answers first.' ].
	state = #NoInput 	ifTrue: [ self denyTransaction: 'Dispense your wisdom, or receive none.' ].