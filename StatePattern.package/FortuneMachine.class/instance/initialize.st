initialization
initialize
	super initialize.
	state := NoInput forMachine: self.
	library := OrderedCollection withAll: #('fortune 1' 'fortune 2' 'sdfbsdg' 'dskjvghdfskjg').
	inputs := OrderedCollection new.
	prizes := OrderedCollection new.
	filteredWords := OrderedCollection new.
	^ self.