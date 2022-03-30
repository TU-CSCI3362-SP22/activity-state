actions
vend
	state = #HasInput 	ifTrue: [ self denyTransaction: 'You must submit your answers first.' ].
	state = #NoInput 	ifTrue: [ self denyTransaction: 'Dispense your wisdom, or receive none.' ].
	state = #Vending 	ifTrue: [ self dispensePrizes. state := #NoInput. ].	