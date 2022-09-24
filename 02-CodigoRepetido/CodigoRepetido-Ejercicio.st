!classDefinition: #CantSuspend category: 'CodigoRepetido-Ejercicio'!
Error subclass: #CantSuspend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #NotFound category: 'CodigoRepetido-Ejercicio'!
Error subclass: #NotFound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #CustomerBookTest category: 'CodigoRepetido-Ejercicio'!
TestCase subclass: #CustomerBookTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 19:04:26'!
test01AddingCustomerShouldNotTakeMoreThan50Milliseconds

	| customerBook anActionBlock|
	
	customerBook := CustomerBook new.
	anActionBlock := [customerBook addCustomerNamed: 'John Lennon'].
	
	self AssertPerforming: anActionBlock inLessThan: 	(50*millisecond).
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 19:07:22'!
test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds

	|customerBook anActionBlock|
	
	customerBook := CustomerBook new.
	anActionBlock := [customerBook removeCustomerNamed: 'Paul McCartney'].
	
	customerBook addCustomerNamed: 'Paul McCartney'.
	
	self AssertPerforming: anActionBlock inLessThan: 	(100*millisecond).
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 19:11:15'!
test03CanNotAddACustomerWithEmptyName 

	| customerBook anAction aResponse |
			
	customerBook := CustomerBook new.
	anAction := [ customerBook addCustomerNamed: ''. self fail].
	aResponse := [ :anError | 
			self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage.
			self assert: customerBook isEmpty ].

	self AssertWhen: anAction returns: Error responseIs: aResponse. 
	
	"
	| customerBook |
			
	customerBook := CustomerBook new.

	[ customerBook addCustomerNamed: ''.
	self fail ]
		on: Error 
		do: [ :anError | 
			self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage.
			self assert: customerBook isEmpty ]
	"! !

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 20:50:18'!
test04CanNotRemoveAnInvalidCustomer
	
	| customerBook johnLennon aResponse anAction |
			
	customerBook := CustomerBook new.
	johnLennon := 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.
	
	anAction := [ customerBook removeCustomerNamed: 'Paul McCartney'. self fail ].
	aResponse := [ :anError | self Assert: johnLennon isInA: customerBook with: 1].
	
	self AssertWhen: anAction returns: NotFound responseIs: aResponse.


	"[ customerBook removeCustomerNamed: 'Paul McCartney'.
	self fail ]
		on: NotFound 
		do: [ :anError | 
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: johnLennon) ]"
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 19:48:47'!
test05SuspendingACustomerShouldNotRemoveItFromCustomerBook

	| customerBook paulMcCartney|
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	
	customerBook addCustomerNamed: paulMcCartney.
	customerBook suspendCustomerNamed: paulMcCartney.
	self AssertIn: customerBook aNumberOfActiveIs: 0 andANumberOfSuspendedIs: 1.
	self assert: (customerBook includesCustomerNamed: paulMcCartney).
	

	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 19:49:03'!
test06RemovingASuspendedCustomerShouldRemoveItFromCustomerBook

	| customerBook paulMcCartney|
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	
	customerBook addCustomerNamed: paulMcCartney.
	customerBook suspendCustomerNamed: paulMcCartney.
	customerBook removeCustomerNamed: paulMcCartney.
	
	self AssertIn: customerBook aNumberOfActiveIs: 0 andANumberOfSuspendedIs: 0.
	self deny: (customerBook includesCustomerNamed: paulMcCartney).


	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 20:51:40'!
test07CanNotSuspendAnInvalidCustomer
	
	| customerBook johnLennon aResponse anAction |
			
	customerBook := CustomerBook new.
	johnLennon := 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.
	
	anAction := [ customerBook suspendCustomerNamed: 'Ringo Starr'.	self fail ].
	aResponse := [ :anError | self Assert: johnLennon isIn: customerBook with: 1].
	
	self AssertWhen: anAction returns: CantSuspend responseIs: aResponse.

! !

!CustomerBookTest methodsFor: 'testing' stamp: 'MP 9/24/2022 20:52:18'!
test08CanNotSuspendAnAlreadySuspendedCustomer
	
	| customerBook johnLennon aResponse anAction |
			
	customerBook := CustomerBook new.
	johnLennon := 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.
	customerBook suspendCustomerNamed: johnLennon.

	anAction := [ customerBook suspendCustomerNamed: johnLennon. 	self fail ].
	aResponse := [ :anError | self Assert: johnLennon isIn: customerBook with: 1].
	
	self AssertWhen: anAction returns: CantSuspend responseIs: aResponse.
! !


!CustomerBookTest methodsFor: 'as yet unclassified' stamp: 'MP 9/24/2022 20:48:21'!
Assert: aCustomerName isIn: aCustomerBook with: aNumberOfCostumers 
	self assert: aCustomerBook numberOfCustomers = aNumberOfCostumers.
	self assert: (aCustomerBook includesCustomerNamed: aCustomerName )! !

!CustomerBookTest methodsFor: 'as yet unclassified' stamp: 'MP 9/24/2022 20:50:26'!
Assert: aCustomerName isInA: aCustomerBook with: aNumberOfCostumers 
	self assert: aCustomerBook numberOfCustomers = aNumberOfCostumers.
	self assert: (aCustomerBook includesCustomerNamed: aCustomerName )! !

!CustomerBookTest methodsFor: 'as yet unclassified' stamp: 'MP 9/24/2022 19:45:57'!
AssertIn: aCustomerBook aNumberOfActiveIs: aNumberOfActives andANumberOfSuspendedIs: aNumberOfSuspended.

	self assert: aNumberOfActives equals: aCustomerBook numberOfActiveCustomers.
	self assert: aNumberOfSuspended equals: aCustomerBook numberOfSuspendedCustomers.
	self assert: (aNumberOfActives + aNumberOfSuspended) equals: aCustomerBook numberOfCustomers.! !

!CustomerBookTest methodsFor: 'as yet unclassified' stamp: 'MP 9/24/2022 19:05:42'!
AssertPerforming: anAction inLessThan: aNumberOfMiliseconds
	|millisecondsBeforeRunning millisecondsAfterRunning|
	
	millisecondsBeforeRunning := Time millisecondClockValue * millisecond.
	anAction value.
	millisecondsAfterRunning := Time millisecondClockValue * millisecond.

	self assert: (millisecondsAfterRunning - millisecondsBeforeRunning) < (aNumberOfMiliseconds).
	
	
	"Variables con el mismo nombre en diferentes entornos, si o no?"! !

!CustomerBookTest methodsFor: 'as yet unclassified' stamp: 'MP 9/24/2022 19:15:49'!
AssertWhen: anAction returns: aTypeOfError responseIs: aResponse 

	anAction on: aTypeOfError		do: aResponse.! !


!classDefinition: #CustomerBook category: 'CodigoRepetido-Ejercicio'!
Object subclass: #CustomerBook
	instanceVariableNames: 'suspended active'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
includesCustomerNamed: aName

	^(active includes: aName) or: [ suspended includes: aName ]! !

!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
isEmpty
	
	^active isEmpty and: [ suspended isEmpty ]! !


!CustomerBook methodsFor: 'initialization' stamp: 'NR 4/3/2019 10:14:26'!
initialize

	super initialize.
	active := OrderedCollection new.
	suspended:= OrderedCollection new.! !


!CustomerBook methodsFor: 'customer management' stamp: 'NR 4/3/2019 10:14:26'!
addCustomerNamed: aName

	aName isEmpty ifTrue: [ self signalCustomerNameCannotBeEmpty ].
	((active includes: aName) or: [suspended includes: aName]) ifTrue: [ self signalCustomerAlreadyExists ].
	
	active add: aName ! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 4/3/2019 10:14:26'!
numberOfActiveCustomers
	
	^active size! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 4/3/2019 10:14:26'!
numberOfCustomers
	
	^active size + suspended size! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 9/19/2018 17:36:09'!
numberOfSuspendedCustomers
	
	^suspended size! !

!CustomerBook methodsFor: 'customer management' stamp: 'MP 9/24/2022 20:33:43'!
removeCustomerNamed: aName 
	^active remove: aName ifAbsent: [
		suspended remove: aName ifAbsent: [
			NotFound signal]].! !

!CustomerBook methodsFor: 'customer management' stamp: 'HernanWilkinson 7/6/2011 17:52'!
signalCustomerAlreadyExists 

	self error: self class customerAlreadyExistsErrorMessage! !

!CustomerBook methodsFor: 'customer management' stamp: 'HernanWilkinson 7/6/2011 17:51'!
signalCustomerNameCannotBeEmpty 

	self error: self class customerCanNotBeEmptyErrorMessage ! !

!CustomerBook methodsFor: 'customer management' stamp: 'MP 9/24/2022 19:22:43'!
suspendCustomerNamed: aName 
	
	(active includes: aName) ifFalse: [^CantSuspend signal].
	
	active remove: aName.
	
	suspended add: aName
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerBook class' category: 'CodigoRepetido-Ejercicio'!
CustomerBook class
	instanceVariableNames: ''!

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:18'!
customerAlreadyExistsErrorMessage

	^'Customer Already Exists'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:25'!
customerCanNotBeEmptyErrorMessage

	^'Customer Name Cannot Be Empty'! !
