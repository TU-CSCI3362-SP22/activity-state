initialization
initialize
	state := #NoInput.
	library := self defaultLibrary.
	inputs := OrderedCollection new.
	prizes := OrderedCollection new.
	filteredWords := OrderedCollection new.
	^ self.