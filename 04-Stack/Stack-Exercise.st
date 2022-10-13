!classDefinition: #OOStackTest category: 'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 18:00:02'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:59:57'!
test02PushAddElementsToTheStack

	| stack |
	stack := OOStack new.
	
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:59:50'!
test03PopRemovesElementsFromTheStack

	| stack |
	stack := OOStack new.
	stack push: 'something'.
	
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:59:43'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: pushedObject equals: stack pop! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:56:59'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'first'.
	secondPushedObject := 'second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: secondPushedObject equals: stack pop.
	self assert: firstPushedObject equals: stack pop.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 18:00:26'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: pushedObject equals: stack top.
	! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:58:27'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: 1 equals: stack size.
	stack top.
	self assert: 1 equals: stack size.
	! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:58:44'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStack stackEmptyErrorDescription equals: anError messageText ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:58:56'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStack stackEmptyErrorDescription equals: anError messageText ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'JMB 10/8/2022 17:59:07'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStack stackEmptyErrorDescription equals: anError messageText ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: 'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'as yet unclassified' stamp: 'MP 10/11/2022 21:31:14'!
test01WhenPrefixIsEmptySFBPReturnsError

	| stack sentenceFinder|
	
	stack := OOStack new.
	stack push: 'ferro'.
	stack push: 'atlanta'.
	
	sentenceFinder := SentenceFinderByPrefix new.
	
	self assert: (sentenceFinder find: '' = 'un Error').
	"[ self assert: sentenceFinder find: ''. self fail ] on: 
	aResponse := [ :anError | self Assert: johnLennon isInA: customerBook with: 1].
	anAction aTypeOfError		do: aResponse."
	
	"[self assert: sentenceFinder find: ''.] should: []"! !


!classDefinition: #OOStack category: 'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'initialization' stamp: 'MP 10/9/2022 14:43:56'!
initialize
	
	elements := OrderedCollection new.! !


!OOStack methodsFor: 'empty or not' stamp: 'MP 10/9/2022 14:45:28'!
isEmpty

	^elements isEmpty.! !

!OOStack methodsFor: 'empty or not' stamp: 'MP 10/9/2022 17:05:03'!
notEmpty

	^elements notEmpty.! !


!OOStack methodsFor: 'primitives' stamp: 'MP 10/9/2022 17:30:39'!
pop
	^self handler pop.! !

!OOStack methodsFor: 'primitives' stamp: 'MP 10/9/2022 14:49:01'!
push: anElement

	elements add: anElement.! !

!OOStack methodsFor: 'primitives' stamp: 'MP 10/9/2022 17:33:55'!
top
	^self handler top.
	
	"elements isEmpty ifTrue: [^self error: self class stackEmptyErrorDescription].
	^elements last."! !


!OOStack methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:14:41'!
handler

	^StackHandler kindOfHandlerFor: self.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:11:18'!
popIfEmpty

	^self error: self class stackEmptyErrorDescription.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:12:31'!
popIfNotEmpty

	^elements removeLast.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 14:54:20'!
size

	^elements size.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:35:26'!
topIfEmpty
	
	^self error: self class stackEmptyErrorDescription.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:35:43'!
topIfNotEmpty

	^elements last.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: 'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #SentenceFinderByPrefix category: 'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'as yet unclassified' stamp: 'MP 10/11/2022 21:10:21'!
find: aPrefix
! !


!classDefinition: #StackHandler category: 'Stack-Exercise'!
Object subclass: #StackHandler
	instanceVariableNames: 'mainStack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackHandler methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:28:11'!
initializeFor: aStack

	mainStack := aStack.! !

!StackHandler methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:06:45'!
pop
	
	self subclassResponsibility.! !

!StackHandler methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:07:08'!
top
	
	self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StackHandler class' category: 'Stack-Exercise'!
StackHandler class
	instanceVariableNames: ''!

!StackHandler class methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:21:44'!
canInstanciate: aStack

	self subclassResponsibility.! !

!StackHandler class methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:26:58'!
handlerFor: aStack

	^self new initializeFor: aStack.! !

!StackHandler class methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:27:30'!
kindOfHandlerFor: aStack

	^(self subclasses detect: [:aHandlerClass | aHandlerClass canInstanciate: aStack ]) handlerFor: aStack.! !


!classDefinition: #Empty category: 'Stack-Exercise'!
StackHandler subclass: #Empty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!Empty methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:09:52'!
pop

	^mainStack popIfEmpty.! !

!Empty methodsFor: 'as yet unclassified' stamp: 'MP 10/11/2022 21:03:27'!
top

	^mainStack topIfEmpty.
	"main             topWhen"! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empty class' category: 'Stack-Exercise'!
Empty class
	instanceVariableNames: ''!

!Empty class methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:22:14'!
canInstanciate: aStack

	^aStack isEmpty.! !


!classDefinition: #NotEmpty category: 'Stack-Exercise'!
StackHandler subclass: #NotEmpty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!NotEmpty methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:10:01'!
pop

	^mainStack popIfNotEmpty.! !

!NotEmpty methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:34:37'!
top

	^mainStack topIfNotEmpty.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NotEmpty class' category: 'Stack-Exercise'!
NotEmpty class
	instanceVariableNames: ''!

!NotEmpty class methodsFor: 'as yet unclassified' stamp: 'MP 10/9/2022 17:22:41'!
canInstanciate: aStack

	^aStack notEmpty.! !
