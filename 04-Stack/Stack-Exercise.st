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

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 18:46:42'!
test01PrefixCanNotBeEmpty

	| stack |
	
	stack := self twoSentencesStack.
	
	self should: [SentenceFinderByPrefix with: '' in: stack.]
		raise: Error
		withExceptionDo: [:anError | 
			self assert: anError messageText equals: SentenceFinderByPrefix emptyPrefixErrorMessage].! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 18:46:58'!
test02PrefixCanNotIncludeSpaces
	| stack |
	
	stack := self twoSentencesStack.
	
	self should: [SentenceFinderByPrefix with: ' ' in: stack.]
		raise: Error
		withExceptionDo: [:anError | 
			self assert: anError messageText equals: SentenceFinderByPrefix spaceInPrefixErrorMessage].! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 18:47:22'!
test03FindASentenceThatStartsWithPrefix
	| stack sentenceFinder foundSentences |
	
	stack := self oneSentenceStack.
	
	sentenceFinder := SentenceFinderByPrefix with: 'Fe' in: stack.
	
	foundSentences := sentenceFinder find.
	
	self assert: foundSentences first equals: stack top.
	self assert: foundSentences size equals: 1.! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 19:34:23'!
test04FindInAnEmptyStackReturnsAnEmptyCollection
	| stack sentenceFinder foundSentences |
	
	stack := OOStack new.
	
	sentenceFinder := SentenceFinderByPrefix with: 'Fe' in: stack.
	
	foundSentences := sentenceFinder find.
	
	self assert: foundSentences isEmpty.! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 18:47:41'!
test05ShouldntFindSentencesThatDontBeginWithPrefix
	| stack sentenceFinder foundSentences |
	
	stack := self threeSentencesStack.
		
	sentenceFinder := SentenceFinderByPrefix with: 'BocaUnidos' in: stack.
	
	foundSentences := sentenceFinder find.
	
	self assert: foundSentences isEmpty.! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 19:11:51'!
test06AfterSearchByPrefixStackMantainsSizeAndOrder
	| stack sentenceFinder foundSentences |
	
	stack := self threeSentencesStack.
		
	sentenceFinder := SentenceFinderByPrefix with: 'Almagro' in: stack.
	
	foundSentences := sentenceFinder find.
	
	self assert: foundSentences isEmpty.
	
	self AssertSizeAndOrderIsSameBetween: stack and: self threeSentencesStack.! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 18:48:29'!
test07SentenceFinderIsCaseSensitive
	| stack sentenceFinder foundSentences |
	
	stack := self threeSentencesStack.
		
	sentenceFinder := SentenceFinderByPrefix with: 'bo' in: stack.
	
	foundSentences := sentenceFinder find.
	
	self assert: foundSentences isEmpty.! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'MP 10/13/2022 19:32:24'!
test08SearchWithPrefixForMultipleSentencesFindsAllExpected
	| stack sentenceFinder foundSentences |
	
	stack := self twoSentencesStack.
	stack push: 'Boca'.
	stack push: 'BorussiaDortmund'.	
		
	sentenceFinder := SentenceFinderByPrefix with: 'Bo' in: stack.
	
	foundSentences := sentenceFinder find.
	
	self assert: foundSentences first equals: 'BorussiaDortmund'.
	self assert: foundSentences last equals: 'Boca'.
	self assert: foundSentences size equals: 2.! !


!SentenceFinderByPrefixTest methodsFor: 'stack creation' stamp: 'MP 10/13/2022 19:15:21'!
fourSentencesStack
	|stack|
	stack := OOStack new.
	stack push: 'Ferro'.
	stack push: 'Atlanta'.	
	stack push: 'Boca'.
	stack push: 'BorussiaDortmund'.
	^stack! !

!SentenceFinderByPrefixTest methodsFor: 'stack creation' stamp: 'MP 10/13/2022 18:45:41'!
oneSentenceStack
	|stack|
	stack := OOStack new.
	stack push: 'Ferro'.
	^stack! !

!SentenceFinderByPrefixTest methodsFor: 'stack creation' stamp: 'MP 10/13/2022 19:15:28'!
threeSentencesStack
	|stack|
	stack := OOStack new.
	stack push: 'Ferro'.
	stack push: 'Atlanta'.	
	stack push: 'Boca'.
	^stack! !

!SentenceFinderByPrefixTest methodsFor: 'stack creation' stamp: 'MP 10/13/2022 18:45:27'!
twoSentencesStack
	|stack|
	stack := OOStack new.
	stack push: 'Ferro'.
	stack push: 'Atlanta'.	
	^stack! !


!SentenceFinderByPrefixTest methodsFor: 'private assertions' stamp: 'MP 10/13/2022 19:08:30'!
AssertSizeAndOrderIsSameBetween: aStack and: anotherStack

	self assert: aStack size equals: anotherStack size.
	self assert: aStack hasSameOrderThan: anotherStack.! !

!SentenceFinderByPrefixTest methodsFor: 'private assertions' stamp: 'MP 10/13/2022 19:06:08'!
assert: aStack hasSameOrderThan: anotherStack

	aStack size timesRepeat: [
		self assert: aStack pop equals: anotherStack pop.
		]! !


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


!OOStack methodsFor: 'primitives' stamp: 'MP 10/13/2022 19:55:39'!
pop
	^self state pop.! !

!OOStack methodsFor: 'primitives' stamp: 'MP 10/9/2022 14:49:01'!
push: anElement

	elements add: anElement.! !

!OOStack methodsFor: 'primitives' stamp: 'MP 10/13/2022 20:09:37'!
top
	^self state top.! !


!OOStack methodsFor: 'size' stamp: 'MP 10/9/2022 14:54:20'!
size

	^elements size.! !


!OOStack methodsFor: 'private' stamp: 'MP 10/13/2022 20:06:54'!
popWhenEmpty

	^self error: self class stackEmptyErrorDescription.! !

!OOStack methodsFor: 'private' stamp: 'MP 10/13/2022 20:06:39'!
popWhenNotEmpty

	^elements removeLast.! !

!OOStack methodsFor: 'private' stamp: 'MP 10/13/2022 20:02:42'!
state

	^StackState stateFor: self.! !

!OOStack methodsFor: 'private' stamp: 'MP 10/13/2022 20:05:33'!
topWhenEmpty
	
	^self error: self class stackEmptyErrorDescription.! !

!OOStack methodsFor: 'private' stamp: 'MP 10/13/2022 20:06:17'!
topWhenNotEmpty

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
	instanceVariableNames: 'prefix stack foundSentences auxStack stackSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'funcionality public' stamp: 'MP 10/13/2022 17:46:18'!
find

	auxStack := OOStack new.
	
	self findAllSentences.
	
	self restoreSentencesInOriginalStack.
	
	^foundSentences.! !


!SentenceFinderByPrefix methodsFor: 'funcionality private' stamp: 'MP 10/13/2022 17:39:12'!
findASentenceInStack
	| sentence |
	
	sentence := stack pop.
	(sentence beginsWith: prefix) ifTrue: [foundSentences add: sentence].
	auxStack push: sentence.! !

!SentenceFinderByPrefix methodsFor: 'funcionality private' stamp: 'MP 10/13/2022 17:38:39'!
findAllSentences
	
	foundSentences := OrderedCollection new.
	
	stackSize timesRepeat: [self findASentenceInStack]! !

!SentenceFinderByPrefix methodsFor: 'funcionality private' stamp: 'MP 10/13/2022 17:45:53'!
restoreSentencesInOriginalStack
	
	stackSize timesRepeat: [	stack push: auxStack pop		].! !


!SentenceFinderByPrefix methodsFor: 'initialization' stamp: 'MP 10/13/2022 17:32:30'!
initializeWith: aPrefix in: aStack

	prefix := aPrefix.
	stack := aStack.
	stackSize := aStack size.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SentenceFinderByPrefix class' category: 'Stack-Exercise'!
SentenceFinderByPrefix class
	instanceVariableNames: ''!

!SentenceFinderByPrefix class methodsFor: 'instance creation' stamp: 'MP 10/13/2022 19:43:35'!
with: aPrefix in: aStack
	aPrefix isEmpty ifTrue: [self error: self emptyPrefixErrorMessage].
	(aPrefix includes: $ ) ifTrue: [self error: self spaceInPrefixErrorMessage].
	
	^self new initializeWith: aPrefix in: aStack.! !


!SentenceFinderByPrefix class methodsFor: 'error messages' stamp: 'MP 10/13/2022 15:23:10'!
emptyPrefixErrorMessage

	^'Prefix cannot be empty'! !

!SentenceFinderByPrefix class methodsFor: 'error messages' stamp: 'MP 10/13/2022 16:07:57'!
spaceInPrefixErrorMessage

	^'Prefix cannot have spaces'! !


!classDefinition: #StackState category: 'Stack-Exercise'!
Object subclass: #StackState
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackState methodsFor: 'primitives' stamp: 'MP 10/9/2022 17:06:45'!
pop
	
	self subclassResponsibility.! !

!StackState methodsFor: 'primitives' stamp: 'MP 10/9/2022 17:07:08'!
top
	
	self subclassResponsibility.! !


!StackState methodsFor: 'initialization' stamp: 'MP 10/13/2022 20:07:49'!
initializeFor: aStack

	stack := aStack.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StackState class' category: 'Stack-Exercise'!
StackState class
	instanceVariableNames: ''!

!StackState class methodsFor: 'instance creation' stamp: 'MP 10/9/2022 17:21:44'!
canInstanciate: aStack

	self subclassResponsibility.! !

!StackState class methodsFor: 'instance creation' stamp: 'MP 10/13/2022 20:03:41'!
for: aStack

	^self new initializeFor: aStack.! !

!StackState class methodsFor: 'instance creation' stamp: 'MP 10/13/2022 20:03:41'!
stateFor: aStack

	^(self subclasses detect: [:aHandlerClass | aHandlerClass canInstanciate: aStack ]) for: aStack.! !


!classDefinition: #Empty category: 'Stack-Exercise'!
StackState subclass: #Empty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!Empty methodsFor: 'primitives' stamp: 'MP 10/13/2022 20:08:04'!
pop

	^stack popWhenEmpty.! !

!Empty methodsFor: 'primitives' stamp: 'MP 10/13/2022 20:08:11'!
top

	^stack topWhenEmpty.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empty class' category: 'Stack-Exercise'!
Empty class
	instanceVariableNames: ''!

!Empty class methodsFor: 'instance creation' stamp: 'MP 10/9/2022 17:22:14'!
canInstanciate: aStack

	^aStack isEmpty.! !


!classDefinition: #NotEmpty category: 'Stack-Exercise'!
StackState subclass: #NotEmpty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!NotEmpty methodsFor: 'primitives' stamp: 'MP 10/13/2022 20:08:23'!
pop

	^stack popWhenNotEmpty.! !

!NotEmpty methodsFor: 'primitives' stamp: 'MP 10/13/2022 20:08:29'!
top

	^stack topWhenNotEmpty.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NotEmpty class' category: 'Stack-Exercise'!
NotEmpty class
	instanceVariableNames: ''!

!NotEmpty class methodsFor: 'instance creation' stamp: 'MP 10/9/2022 17:22:41'!
canInstanciate: aStack

	^aStack notEmpty.! !
