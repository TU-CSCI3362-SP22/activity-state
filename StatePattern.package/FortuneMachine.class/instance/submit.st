actions
submit
	state = #Vending 	ifTrue: [ self denyTransaction: 'You already submitted.' ].
	state = #HasInput 	ifTrue: [ self preparePrizes. state := #Vending. ].
	state = #NoInput 	ifTrue: [ self denyTransaction: 'Dispense your wisdom, or receive none.' ].