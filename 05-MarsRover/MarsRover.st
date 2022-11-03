!classDefinition: #TestMarsRover category: 'MarsRover'!
TestCase subclass: #TestMarsRover
	instanceVariableNames: 'marsRoverFacingNorth marsRoverFacingWest marsRoverFacingEast marsRoverFacingSouth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/3/2022 19:02:57'!
test02RoverFacingNorthMovesOnePositionForwardInYAxisWhenReceivesFCommand

	self assertThatARover: marsRoverFacingNorth 
		afterProcessingCommands: 'f' 
		endsInPosition: 0@1 
		facing: #North.! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/3/2022 19:03:17'!
test03RoverFacingNorthMovesOnePositionBackwardsInYAxisWhenReceivesBCommand

	self assertThatARover: marsRoverFacingNorth 
		afterProcessingCommands: 'b' 
		endsInPosition: 0@-1 
		facing: #North.! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/3/2022 19:04:33'!
test04RoverFacingNorthRotatesEastWhenReceivesRCommand

	self assertThatARover: marsRoverFacingNorth 
		afterProcessingCommands: 'r' 
		endsInPosition: 0@0
		facing: #East.! !

!TestMarsRover methodsFor: 'test - facing north' stamp: 'MP 11/3/2022 19:05:08'!
test05RoverFacingNorthRotatesWestWhenReceivesLCommand

	self assertThatARover: marsRoverFacingNorth 
		afterProcessingCommands: 'l' 
		endsInPosition: 0@0
		facing: #West.
	! !


!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/3/2022 19:05:57'!
test06RoverFacingEastMovesOnePositionForwardInXAxisWhenReceivesFCommand
	
	self assertThatARover: marsRoverFacingEast 
		afterProcessingCommands: 'f' 
		endsInPosition: 1@0 
		facing: #East.	
! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/3/2022 19:06:35'!
test07RoverFacingEastMovesOnePositionBackwardsInXAxisWhenReceivesBCommand

	self assertThatARover: marsRoverFacingEast 
		afterProcessingCommands: 'b' 
		endsInPosition: -1@0 
		facing: #East.	
! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/3/2022 19:07:07'!
test08RoverFacingEastRotatesSouthWhenReceivesRCommand

	self assertThatARover: marsRoverFacingEast 
		afterProcessingCommands: 'r' 
		endsInPosition: 0@0 
		facing: #South.	! !

!TestMarsRover methodsFor: 'test - facing east' stamp: 'MP 11/3/2022 19:07:34'!
test09RoverFacingEastRotatesNorthWhenReceivesLCommand

	self assertThatARover: marsRoverFacingEast 
		afterProcessingCommands: 'l' 
		endsInPosition: 0@0 
		facing: #North.	! !


!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/3/2022 19:09:27'!
test10RoverFacingSouthMovesOnePositionBackwardsInXAxisWhenReceivesFCommand

	self assertThatARover: marsRoverFacingSouth 
		afterProcessingCommands: 'f' 
		endsInPosition: 0@-1 
		facing: #South.	! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/3/2022 19:09:53'!
test11RoverFacingSouthMovesOnePositionForwardsInXAxisWhenReceivesBCommand
	
	self assertThatARover: marsRoverFacingSouth 
		afterProcessingCommands: 'b' 
		endsInPosition: 0@1 
		facing: #South.	! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/3/2022 19:10:29'!
test12RoverFacingSouthRotatesWestWhenReceivesRCommand
	
	self assertThatARover: marsRoverFacingSouth 
		afterProcessingCommands: 'r' 
		endsInPosition: 0@0 
		facing: #West.		
! !

!TestMarsRover methodsFor: 'test - facing south' stamp: 'MP 11/3/2022 19:10:52'!
test13RoverFacingSouthRotatesEastWhenReceivesLCommand

	self assertThatARover: marsRoverFacingSouth 
		afterProcessingCommands: 'l' 
		endsInPosition: 0@0 
		facing: #East.		
! !


!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/3/2022 19:11:42'!
test14RoverFacingWestMovesOnePositionBackwardsInXAxisWhenReceivesFCommand
	
	self assertThatARover: marsRoverFacingWest 
		afterProcessingCommands: 'f' 
		endsInPosition: -1@0 
		facing: #West.		! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/3/2022 19:12:24'!
test15RoverFacingWestMovesOnePositionForwardInXAxisWhenReceivesBCommand

	self assertThatARover: marsRoverFacingWest 
		afterProcessingCommands: 'b' 
		endsInPosition: 1@0 
		facing: #West.		
! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/3/2022 19:14:12'!
test16RoverFacingWestRotatesSouthWhenReceivesLCommand

	self assertThatARover: marsRoverFacingWest 
		afterProcessingCommands: 'l' 
		endsInPosition: 0@0 
		facing: #South.		! !

!TestMarsRover methodsFor: 'test - facing west' stamp: 'MP 11/3/2022 19:14:41'!
test17RoverFacingWestRotatesNorthWhenReceivesRCommand

	self assertThatARover: marsRoverFacingWest 
		afterProcessingCommands: 'r' 
		endsInPosition: 0@0 
		facing: #North.		! !


!TestMarsRover methodsFor: 'test - doesnt move' stamp: 'MP 11/3/2022 19:14:54'!
test01RoverDoesNotMoveWhenReceivesEmptyCommand

	self assertThatARover: marsRoverFacingNorth 
		afterProcessingCommands: '' 
		endsInPosition: 0@0 
		facing: #North.
! !

!TestMarsRover methodsFor: 'test - doesnt move' stamp: 'MP 11/3/2022 19:02:06'!
test20RoverDoesNotMoveAndRaisesErrorWhenReceivesAnInvalidCommandFirst

	self should: [marsRoverFacingNorth moveWithCommands: ' '] raise: Error withExceptionDo: [:anError | 
		self assert: (marsRoverFacingNorth isInPosition: 0@0 andHeading: #North).
		self assert: anError messageText equals: MarsRover marsRoverInvalidCommandDescription.
		].! !


!TestMarsRover methodsFor: 'test - multiple movements' stamp: 'MP 11/3/2022 19:15:41'!
test18RoverMovesAsExpectedWhenReceivesAMultipleCommandString

	self assertThatARover: marsRoverFacingNorth 
		afterProcessingCommands: 'ff' 
		endsInPosition: 0@2 
		facing: #North.		
	
	! !

!TestMarsRover methodsFor: 'test - multiple movements' stamp: 'MP 11/3/2022 19:16:20'!
test19RoverStopsMovingAndRaisesErrorWhenReceivesAnInvalidComand

	self should: [marsRoverFacingNorth moveWithCommands: 'ffñff'] raise: Error withExceptionDo: [:anError | 
		self assert: (marsRoverFacingNorth isInPosition: 0@2 andHeading: #North).
		self assert: anError messageText equals: MarsRover marsRoverInvalidCommandDescription.
		].
	
	
	! !


!TestMarsRover methodsFor: 'setup' stamp: 'MP 11/3/2022 19:25:35'!
setUp
	
	marsRoverFacingNorth := MarsRover newInPosition: 0@0 facing: MarsRoverHeadToNorth new.
	
	marsRoverFacingWest := MarsRover newInPosition: 0@0 facing: MarsRoverHeadToWest new.
	
	marsRoverFacingEast := MarsRover newInPosition: 0@0 facing: MarsRoverHeadToEast new.
	
	marsRoverFacingSouth := MarsRover newInPosition: 0@0 facing: MarsRoverHeadToSouth new.! !


!TestMarsRover methodsFor: 'assertions' stamp: 'MP 11/3/2022 18:51:54'!
assertThatARover: aRover afterProcessingCommands: aStringOfCommands endsInPosition: aPosition facing: aDirection
	
	aRover moveWithCommands: aStringOfCommands.

	self assert: (aRover isInPosition: aPosition andHeading: aDirection).! !


!classDefinition: #MarsRover category: 'MarsRover'!
Object subclass: #MarsRover
	instanceVariableNames: 'position headDirection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'initialization' stamp: 'MP 11/3/2022 19:29:02'!
initializeInPosition: aPosition facing: aDirection

	position := aPosition.
	headDirection := aDirection.! !


!MarsRover methodsFor: 'testing' stamp: 'MP 11/3/2022 18:52:50'!
isInPosition: aPosition andHeading: aDirection 

	^position = aPosition and: [headDirection isHeading: aDirection].! !


!MarsRover methodsFor: 'movement' stamp: 'MP 11/3/2022 17:32:02'!
moveWithACommand: aCommand

	aCommand = $f ifTrue: [^headDirection moveForward: self].
	aCommand = $b ifTrue: [^headDirection moveBackwards: self].
	aCommand = $r ifTrue: [^headDirection rotateRight: self.].
	aCommand = $l ifTrue: [^headDirection rotateLeft: self].
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

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:32:15'!
rotateLeftFacingEast

	headDirection := MarsRoverHeadToNorth new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:32:22'!
rotateLeftFacingNorth

	headDirection := MarsRoverHeadToWest new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:32:33'!
rotateLeftFacingSouth

	headDirection := MarsRoverHeadToEast new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:32:38'!
rotateLeftFacingWest

	headDirection := MarsRoverHeadToSouth new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:32:43'!
rotateRightFacingEast

	headDirection := MarsRoverHeadToSouth new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:32:49'!
rotateRightFacingNorth

	headDirection := MarsRoverHeadToEast new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:32:53'!
rotateRightFacingSouth

	headDirection := MarsRoverHeadToWest new.! !

!MarsRover methodsFor: 'private dd' stamp: 'MP 11/3/2022 17:33:00'!
rotateRightFacingWest

	headDirection := MarsRoverHeadToNorth new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'MarsRover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'MP 11/1/2022 14:23:50'!
marsRoverInvalidCommandDescription

	^'invalid command'! !

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'MP 11/3/2022 18:59:22'!
newInPosition: aPosition facing: aDirection.

	^self new initializeInPosition: aPosition facing: aDirection.! !


!classDefinition: #MarsRoverHead category: 'MarsRover'!
Object subclass: #MarsRoverHead
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverHead methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:22:35'!
moveBackwards: aRover

	self subclassResponsibility.! !

!MarsRoverHead methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:18:49'!
moveForward: aRover

	self subclassResponsibility.! !

!MarsRoverHead methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:06:23'!
rotateLeft: aRover

	self subclassResponsibility.! !

!MarsRoverHead methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:43'!
rotateRight: aRover

	self subclassResponsibility.! !


!MarsRoverHead methodsFor: 'direction' stamp: 'MP 11/3/2022 19:28:41'!
isHeading: aDirection

	self subclassResponsibility.! !


!classDefinition: #MarsRoverHeadToEast category: 'MarsRover'!
MarsRoverHead subclass: #MarsRoverHeadToEast
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverHeadToEast methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:22:58'!
moveBackwards: aRover

	aRover moveBackwardsFacingEast.! !

!MarsRoverHeadToEast methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:19:47'!
moveForward: aRover

	aRover moveForwardFacingEast.! !

!MarsRoverHeadToEast methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:08:43'!
rotateLeft: aRover

	aRover rotateLeftFacingEast.! !

!MarsRoverHeadToEast methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:49'!
rotateRight: aRover

	aRover rotateRightFacingEast.! !


!MarsRoverHeadToEast methodsFor: 'direction' stamp: 'MP 11/3/2022 19:28:19'!
isHeading: aDirection

	^aDirection = #East! !


!classDefinition: #MarsRoverHeadToNorth category: 'MarsRover'!
MarsRoverHead subclass: #MarsRoverHeadToNorth
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverHeadToNorth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:23:08'!
moveBackwards: aRover

	aRover moveBackwardsFacingNorth.! !

!MarsRoverHeadToNorth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:20:05'!
moveForward: aRover

	aRover moveForwardFacingNorth.! !

!MarsRoverHeadToNorth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:05'!
rotateLeft: aRover

	aRover rotateLeftFacingNorth.! !

!MarsRoverHeadToNorth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:04'!
rotateRight: aRover

	aRover rotateRightFacingNorth.! !


!MarsRoverHeadToNorth methodsFor: 'direction' stamp: 'MP 11/3/2022 19:28:03'!
isHeading: aDirection

	^aDirection = #North! !


!classDefinition: #MarsRoverHeadToSouth category: 'MarsRover'!
MarsRoverHead subclass: #MarsRoverHeadToSouth
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverHeadToSouth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:23:27'!
moveBackwards: aRover

	aRover moveBackwardsFacingSouth.! !

!MarsRoverHeadToSouth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:20:18'!
moveForward: aRover

	aRover moveForwardFacingSouth.! !

!MarsRoverHeadToSouth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:16'!
rotateLeft: aRover

	aRover rotateLeftFacingSouth.! !

!MarsRoverHeadToSouth methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:19'!
rotateRight: aRover

	aRover rotateRightFacingSouth.! !


!MarsRoverHeadToSouth methodsFor: 'direction' stamp: 'MP 11/3/2022 19:27:40'!
isHeading: aDirection

	^aDirection = #South! !


!classDefinition: #MarsRoverHeadToWest category: 'MarsRover'!
MarsRoverHead subclass: #MarsRoverHeadToWest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverHeadToWest methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:53:45'!
moveBackwards: aRover

	aRover moveBackwardsFacingWest.! !

!MarsRoverHeadToWest methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:20:32'!
moveForward: aRover

	aRover moveForwardFacingWest.! !

!MarsRoverHeadToWest methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:11:27'!
rotateLeft: aRover

	aRover rotateLeftFacingWest.! !

!MarsRoverHeadToWest methodsFor: 'private dd' stamp: 'MP 11/1/2022 15:12:33'!
rotateRight: aRover

	aRover rotateRightFacingWest.! !


!MarsRoverHeadToWest methodsFor: 'direction' stamp: 'MP 11/3/2022 19:26:45'!
isHeading: aDirection

	^aDirection = #West! !
