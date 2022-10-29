!classDefinition: #TestMarsRover category: 'MarsRover'!
TestCase subclass: #TestMarsRover
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 10/29/2022 18:13:25'!
test01RoverDoesNotMoveWhenReceivesEmptyCommand
	|aRover |

	aRover := MarsRover newInPosition: 0@0 facing: 'n'.
	
	aRover moveWithCommands: ''.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 'n' ).! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 10/29/2022 19:17:13'!
test02RoverFacingNorthMovesOnePositionForwardInYAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 'n'.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: 0@1 andDirectionIs: 'n' ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 10/29/2022 18:58:50'!
test03RoverFacingNorthMovesOnePositionBackwardsInYAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 'n'.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: 0@-1 andDirectionIs: 'n' ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 10/29/2022 18:35:09'!
test04RoverFacingNorthRotatesEastWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 'n'.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 'e').
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 10/29/2022 18:35:40'!
test05RoverFacingNorthRotatesWestWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 'n'.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 'w').
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 10/29/2022 18:59:22'!
test06RoverFacingEastMovesOnePositionForwardInXAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 'e'.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: 1@0 andDirectionIs: 'e' ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 10/29/2022 18:59:50'!
test07RoverFacingEastMovesOnePositionBackwardsInXAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 'e'.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: -1@0 andDirectionIs: 'e').
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 10/29/2022 18:56:27'!
test08RoverFacingEastRotatesSouthWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 'e'.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 's').
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 10/29/2022 18:56:48'!
test09RoverFacingEastRotatesNorthWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 'e'.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 'n').
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 10/29/2022 19:04:17'!
test10RoverFacingSouthMovesOnePositionBackwardsInXAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 's'.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: 0@-1 andDirectionIs: 's' ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 10/29/2022 19:07:17'!
test11RoverFacingSouthMovesOnePositionForwardsInXAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 's'.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: 0@1 andDirectionIs: 's' ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 10/29/2022 19:10:18'!
test12RoverFacingSouthRotatesWestWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 's'.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 'w').
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 10/29/2022 19:12:52'!
test13RoverFacingSouthRotatesEastWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 's'.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 'e').
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 10/29/2022 19:19:45'!
test14RoverFacingWestMovesOnePositionBackwardsInXAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 'w'.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: -1@0 andDirectionIs: 'w' ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 10/29/2022 19:19:40'!
test15RoverFacingWestMovesOnePositionForwardInXAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 'w'.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: 1@0 andDirectionIs: 'w' ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 10/29/2022 19:23:15'!
test16RoverFacingWestRotatesSouthWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 'w'.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 's').
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 10/29/2022 19:23:44'!
test17RoverFacingWestRotatesNorthWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: 'w'.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: 'n').
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 19:30:53'!
test18
	| aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: 'n'.
	
	aRover moveWithCommands: 'nn'.
	
	self assert: (aRover expectedPositionIs: 0@1 andDirectionIs: 'n' ).
	! !


!classDefinition: #MarsRover category: 'MarsRover'!
Object subclass: #MarsRover
	instanceVariableNames: 'position direction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 17:56:09'!
expectedPositionIs: aPoint andDirectionIs: aDirection 

	^position = aPoint and: [direction = aDirection].! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 17:17:10'!
initializeInPosition: aPosition facing: aCardinalPoint

	position := aPosition.
	direction := aCardinalPoint.! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 19:20:28'!
moveBackwards

	direction = 'n' ifTrue: [position := position + (0@-1)].
	direction = 'e' ifTrue: [position := position + (-1@0)].
	direction = 's' ifTrue: [position := position + (0@1)].	
	direction = 'w' ifTrue: [position := position + (1@0)].! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 19:20:12'!
moveForward

	direction = 'n' ifTrue: [position := position + (0@1)].
	direction = 'e' ifTrue: [position := position + (1@0)].
	direction = 's' ifTrue: [position := position + (0@-1)].
	direction = 'w' ifTrue: [position := position + (-1@0)].! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 19:41:55'!
moveWithACommand: aCommand

	aCommand = 'f' ifTrue: [self moveForward].
	aCommand = 'b' ifTrue: [self moveBackwards].
	aCommand = 'r' ifTrue: [self rotateRight].
	aCommand = 'l' ifTrue: [self rotateLeft].
	
! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 19:46:57'!
moveWithCommands: aStringOfCommands

"	aStringOfCommands = 'f' ifTrue: [self moveForward].
	aStringOfCommands = 'b' ifTrue: [self moveBackwards].
	aStringOfCommands = 'r' ifTrue: [self rotateRight].
	aStringOfCommands = 'l' ifTrue: [self rotateLeft]."
	
	aStringOfCommands do: [:aCommand | self moveWithACommand: aCommand].! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 19:24:33'!
rotateLeft

	direction = 'n' ifTrue: [direction := 'w'] ifFalse: [	
		direction = 'e' ifTrue: [direction := 'n'] ifFalse: [	
			direction = 's' ifTrue: [direction := 'e'] ifFalse: [	
				direction = 'w' ifTrue: [direction := 's'].
					]
				]
		]
! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 19:24:55'!
rotateRight

	direction = 'n' ifTrue: [direction := 'e'] ifFalse: [	
		direction = 'e' ifTrue: [direction := 's'] ifFalse: [	
			direction = 's' ifTrue: [direction := 'w'] ifFalse: [	
				direction = 'w' ifTrue: [direction := 'n'].
					]
				]
		]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'MarsRover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 17:15:23'!
newInPosition: aPosition facing: aCardinalPoint.

	^self new initializeInPosition: aPosition facing: aCardinalPoint.! !
