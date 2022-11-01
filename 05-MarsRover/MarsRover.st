!classDefinition: #TestMarsRover category: 'MarsRover'!
TestCase subclass: #TestMarsRover
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/1/2022 15:46:10'!
test02RoverFacingNorthMovesOnePositionForwardInYAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self northDirection.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: 0@1 andDirectionIs: North ).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/1/2022 15:46:39'!
test03RoverFacingNorthMovesOnePositionBackwardsInYAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self northDirection.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: 0@-1 andDirectionIs: North).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/1/2022 15:46:57'!
test04RoverFacingNorthRotatesEastWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self northDirection.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: East).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/1/2022 15:47:37'!
test05RoverFacingNorthRotatesWestWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self northDirection.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: West).
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/1/2022 15:47:56'!
test06RoverFacingEastMovesOnePositionForwardInXAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self eastDirection.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: 1@0 andDirectionIs: East).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/1/2022 15:48:07'!
test07RoverFacingEastMovesOnePositionBackwardsInXAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self eastDirection.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: -1@0 andDirectionIs: East).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/1/2022 15:48:16'!
test08RoverFacingEastRotatesSouthWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self eastDirection.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: South).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/1/2022 15:48:29'!
test09RoverFacingEastRotatesNorthWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self eastDirection.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: North).
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/1/2022 15:49:40'!
test10RoverFacingSouthMovesOnePositionBackwardsInXAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self southDirection.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: 0@-1 andDirectionIs: South).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/1/2022 15:49:51'!
test11RoverFacingSouthMovesOnePositionForwardsInXAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self southDirection.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: 0@1 andDirectionIs: South).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/1/2022 15:50:00'!
test12RoverFacingSouthRotatesWestWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self southDirection.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: West).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/1/2022 15:50:12'!
test13RoverFacingSouthRotatesEastWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self southDirection.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: East).
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/1/2022 15:50:35'!
test14RoverFacingWestMovesOnePositionBackwardsInXAxisWhenReceivesFCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self westDirection.
	
	aRover moveWithCommands: 'f'.

	self assert: (aRover expectedPositionIs: -1@0 andDirectionIs: West).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/1/2022 15:50:49'!
test15RoverFacingWestMovesOnePositionForwardInXAxisWhenReceivesBCommand
	|aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self westDirection.
	
	aRover moveWithCommands: 'b'.

	self assert: (aRover expectedPositionIs: 1@0 andDirectionIs: West).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/1/2022 15:51:00'!
test16RoverFacingWestRotatesSouthWhenReceivesLCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self westDirection.
	
	aRover moveWithCommands: 'l'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: South).
	"WhenRoverReceives"! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/1/2022 15:51:09'!
test17RoverFacingWestRotatesNorthWhenReceivesRCommand
	|aRover |
	
	aRover := MarsRover newInPosition: 0@0 facing: self westDirection.
	
	aRover moveWithCommands: 'r'.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: North).
	"WhenRoverReceives"! !


!TestMarsRover methodsFor: 'test - dont move' stamp: 'MP 11/1/2022 15:44:16'!
test01RoverDoesNotMoveWhenReceivesEmptyCommand
	|aRover |

	aRover := MarsRover newInPosition: 0@0 facing: self northDirection.
	
	aRover moveWithCommands: ''.

	self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: North).! !

!TestMarsRover methodsFor: 'test - dont move' stamp: 'MP 11/1/2022 15:44:38'!
test20RoverDoesNotMoveAndRaisesErrorWhenReceivesAnInvalidCommandFirst
	| aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self northDirection.
	
	self should: [aRover moveWithCommands: ' '] raise: Error withExceptionDo: [:anError | 
		self assert: (aRover expectedPositionIs: 0@0 andDirectionIs: North).
		self assert: anError messageText equals: MarsRover marsRoverInvalidCommandDescription.
		].! !


!TestMarsRover methodsFor: 'test - multiple movements' stamp: 'MP 11/1/2022 15:51:46'!
test18RoverMovesAsExpectedWhenReceivesAMultipleCommandString
	| aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self northDirection.
	
	aRover moveWithCommands: 'ff'.
	
	self assert: (aRover expectedPositionIs: 0@2 andDirectionIs: North).
	! !

!TestMarsRover methodsFor: 'test - multiple movements' stamp: 'MP 11/1/2022 15:52:03'!
test19RoverStopsMovingAndRaisesErrorWhenReceivesAnInvalidComand
	| aRover |
	
	aRover := MarsRover newInPosition: (0@0) facing: self northDirection.
	
	
	
	self should: [aRover moveWithCommands: 'ffñff'] raise: Error withExceptionDo: [:anError | 
		self assert: (aRover expectedPositionIs: 0@2 andDirectionIs: North).
		self assert: anError messageText equals: MarsRover marsRoverInvalidCommandDescription.
		].
	
	
	! !


!TestMarsRover methodsFor: 'direction inicialization' stamp: 'MP 11/1/2022 15:32:59'!
eastDirection

	^East new.! !

!TestMarsRover methodsFor: 'direction inicialization' stamp: 'MP 11/1/2022 15:32:28'!
northDirection

	^North new.! !

!TestMarsRover methodsFor: 'direction inicialization' stamp: 'MP 11/1/2022 15:33:21'!
southDirection

	^South new.! !

!TestMarsRover methodsFor: 'direction inicialization' stamp: 'MP 11/1/2022 15:33:11'!
westDirection

	^West new.! !


!classDefinition: #MarsRover category: 'MarsRover'!
Object subclass: #MarsRover
	instanceVariableNames: 'position direction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'initialization' stamp: 'MP 11/1/2022 15:34:33'!
initializeInPosition: aPosition facing: aCardinalPoint

	position := aPosition.
	direction := aCardinalPoint.! !


!MarsRover methodsFor: 'testing ????' stamp: 'MP 11/1/2022 15:42:35'!
expectedPositionIs: aPoint andDirectionIs: aDirection 

	^position = aPoint and: [direction class = aDirection].! !


!MarsRover methodsFor: 'movement' stamp: 'MP 11/1/2022 15:30:39'!
moveWithACommand: aCommand

	aCommand = $f ifTrue: [^direction moveForward: self].
	aCommand = $b ifTrue: [^direction moveBackwards: self].
	aCommand = $r ifTrue: [^direction rotateRight: self.].
	aCommand = $l ifTrue: [^direction rotateLeft: self].
	self error: self class marsRoverInvalidCommandDescription.
	
	
! !

!MarsRover methodsFor: 'movement' stamp: 'MP 11/1/2022 15:56:48'!
moveWithCommands: aStringOfCommands

	aStringOfCommands do: [:aCommand | self moveWithACommand: aCommand].! !


!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:26:04'!
moveBackwardsFacingEast

	position := position + (-1@0).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:25:12'!
moveBackwardsFacingNorth

	position := position + (0@-1).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:25:21'!
moveBackwardsFacingSouth

	position := position + (0@1).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:26:55'!
moveBackwardsFacingWest

	position := position + (1@0).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:21:47'!
moveForwardFacingEast

	position := position + (1@0).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:21:30'!
moveForwardFacingNorth

	position := position + (0@1).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:22:06'!
moveForwardFacingSouth

	position := position + (0@-1).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:22:17'!
moveForwardFacingWest

	position := position + (-1@0).! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:10:02'!
rotateLeftFacingEast

	direction := North new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:10:20'!
rotateLeftFacingNorth

	direction := West new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:10:39'!
rotateLeftFacingSouth

	direction := East new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:10:28'!
rotateLeftFacingWest

	direction := South new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:13:05'!
rotateRightFacingEast

	direction := South new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:13:47'!
rotateRightFacingNorth

	direction := East new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:13:22'!
rotateRightFacingSouth

	direction := West new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:13:32'!
rotateRightFacingWest

	direction := North new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'MarsRover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'MP 11/1/2022 14:23:50'!
marsRoverInvalidCommandDescription

	^'invalid command'! !

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'MP 10/29/2022 17:15:23'!
newInPosition: aPosition facing: aCardinalPoint.

	^self new initializeInPosition: aPosition facing: aCardinalPoint.! !


!classDefinition: #MarsRoverXXX category: 'MarsRover'!
Object subclass: #MarsRoverXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverXXX methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:22:35'!
moveBackwards: aRover

	self subclassResponsibility.! !

!MarsRoverXXX methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:18:49'!
moveForward: aRover

	self subclassResponsibility.! !

!MarsRoverXXX methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:06:23'!
rotateLeft: aRover

	self subclassResponsibility.! !

!MarsRoverXXX methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:43'!
rotateRight: aRover

	self subclassResponsibility.! !


!classDefinition: #East category: 'MarsRover'!
MarsRoverXXX subclass: #East
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!East methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:22:58'!
moveBackwards: aRover

	aRover moveBackwardsFacingEast.! !

!East methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:19:47'!
moveForward: aRover

	aRover moveForwardFacingEast.! !

!East methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:08:43'!
rotateLeft: aRover

	aRover rotateLeftFacingEast.! !

!East methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:49'!
rotateRight: aRover

	aRover rotateRightFacingEast.! !


!classDefinition: #North category: 'MarsRover'!
MarsRoverXXX subclass: #North
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!North methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:23:08'!
moveBackwards: aRover

	aRover moveBackwardsFacingNorth.! !

!North methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:20:05'!
moveForward: aRover

	aRover moveForwardFacingNorth.! !

!North methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:05'!
rotateLeft: aRover

	aRover rotateLeftFacingNorth.! !

!North methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:04'!
rotateRight: aRover

	aRover rotateRightFacingNorth.! !


!classDefinition: #South category: 'MarsRover'!
MarsRoverXXX subclass: #South
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!South methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:23:27'!
moveBackwards: aRover

	aRover moveBackwardsFacingSouth.! !

!South methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:20:18'!
moveForward: aRover

	aRover moveForwardFacingSouth.! !

!South methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:16'!
rotateLeft: aRover

	aRover rotateLeftFacingSouth.! !

!South methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:19'!
rotateRight: aRover

	aRover rotateRightFacingSouth.! !


!classDefinition: #West category: 'MarsRover'!
MarsRoverXXX subclass: #West
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!West methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:53:45'!
moveBackwards: aRover

	aRover moveBackwardsFacingWest.! !

!West methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:20:32'!
moveForward: aRover

	aRover moveForwardFacingWest.! !

!West methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:27'!
rotateLeft: aRover

	aRover rotateLeftFacingWest.! !

!West methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:33'!
rotateRight: aRover

	aRover rotateRightFacingWest.! !
