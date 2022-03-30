as yet unclassified
forMachine: aMachine
	| state |
	state := self new.
	state machine: aMachine.
	^state.