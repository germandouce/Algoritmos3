!classDefinition: #StackTest category: 'StackPrimeraParte'!
TestCase subclass: #StackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StackPrimeraParte'!

!StackTest methodsFor: 'test' stamp: 'IL 10/1/2022 19:24:17'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := Stack new.
	
	self assert: stack isEmpty! !

!StackTest methodsFor: 'test' stamp: 'MP 10/7/2022 16:04:32'!
test02AnElementCanBePushed

	| stack |
	
	stack := Stack new.
	
	stack push: 'Ferro'.
	
	self assert: stack isNotEmpty.! !

!StackTest methodsFor: 'test' stamp: 'MP 10/7/2022 15:13:15'!
test03WhenAStackWithOneElementPopsBecomesAnEmpyStack

	| stack |
	
	stack := Stack new.
	
	stack push: 'Ferro'.
	
	stack pop.

	self assert: stack isEmpty.
	
	! !

!StackTest methodsFor: 'test' stamp: 'MP 10/7/2022 15:18:30'!
test04PopReturnsLastElement

	| stack |
	
	stack := Stack new.
	
	stack push: 'Ferro'.

	self assert: stack pop = 'Ferro'.! !

!StackTest methodsFor: 'test' stamp: 'MP 10/7/2022 15:24:35'!
test05LastPushedElementIsFirstPoppedAliasLIFO "StackRespectsLifoPolicy"

	| stack |
	
	stack := Stack new.
	
	stack push: 'Atlanta'.
	stack push: 'Ferro'.

	self assert: stack pop = 'Ferro'.
	
! !

!StackTest methodsFor: 'test' stamp: 'MP 10/7/2022 16:04:21'!
test06TopReturnsLastElementWithoutRemovingIt

	| stack |
	
	stack := Stack new.
	
	stack push: 'Ferro'.

	self assert: (stack top = 'Ferro' and: [ stack isNotEmpty]).! !


!classDefinition: #Stack category: 'StackPrimeraParte'!
Object subclass: #Stack
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StackPrimeraParte'!

!Stack methodsFor: 'initialization' stamp: 'MP 10/7/2022 14:54:20'!
initialize

	elements := OrderedCollection new.! !


!Stack methodsFor: 'empty or not' stamp: 'MP 10/7/2022 14:54:52'!
isEmpty

	^elements isEmpty.! !

!Stack methodsFor: 'empty or not' stamp: 'MP 10/7/2022 16:03:52'!
isNotEmpty
	
	^elements notEmpty.! !


!Stack methodsFor: 'primitives' stamp: 'MP 10/7/2022 15:08:28'!
pop
	
	^elements removeLast.! !

!Stack methodsFor: 'primitives' stamp: 'MP 10/7/2022 14:58:30'!
push: anElement
	
	elements add: anElement.! !

!Stack methodsFor: 'primitives' stamp: 'MP 10/7/2022 15:39:04'!
top

	^elements at: elements size.! !
