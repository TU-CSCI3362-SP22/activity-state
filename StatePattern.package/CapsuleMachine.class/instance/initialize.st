initialization
initialize
	super initialize.
	state := #NoInput.
	library := OrderedCollection withAll: #('a' 'b' 'c' 'd').
	inputs := OrderedCollection new.
	prizes := OrderedCollection new.
	^ self.