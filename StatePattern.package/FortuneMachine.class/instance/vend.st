actions
vend
	state = #Vended 	ifTrue: [ self denyTransaction: 'You already vended something. You are done. Go home.' ].
	state = #HasInput 	ifTrue: [ 
			
			self dispensePrizes. 
			state := #Vended. ].
	state = #NoInput 	ifTrue: [ self denyTransaction: 'Dispense your wisdom, or receive none.' ].
	state = #WordFilter ifTrue: [ 
		self filteredWords addAll: inputs. 
		inputs := OrderedCollection new.
		state := #NoInput].
	