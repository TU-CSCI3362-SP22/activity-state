as yet unclassified
vend
	| rand i |.
	library := library, queuedStrings.
	0 to: queuedStrings length do:
	[ 
	rand := Random new.
	i := (rand next: (library length)). 
	ownedStrings := library at: i.
	].
	state := Vending new.
	