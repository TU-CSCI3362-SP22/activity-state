actions
submit: text
	state = #HasInput 	ifTrue: [ inputs add: text. ] .
	state = #NoInput 	ifTrue: [ inputs add: text. state := #HasInput. ].
	state = #Vended	ifTrue: [ self denyTransaction: 'You are done already.' ].
	state = #WordFilter ifTrue: [ inputs add: text. ]