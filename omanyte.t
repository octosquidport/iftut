#include <adv3.h>
#include <en_us.h>

gameMain: GameMainDef
	initialPlayerChar = me
;

versionInfo: GameID
	name = 'My First Game'
	byline = 'by Octosquidport'
	authorEmail = 'Octosquidport <its_a_trap@notgmail.com>'
	desc = 'An interactive fiction tutorial game. '
	version = '0.0.1'
	IFID = 'b8563851-6257-77c3-04ee-278ceaeb48ac'
;

firstRoom: Room 
	roomName = 'Starting Room'
	roomDesc = "This is the boring starting room."
	
	east = library
	west = dungeon
	south = blankRoom
;

+ me: Actor
; 

library: Room
	roomName = 'Library'
	roomDesc = "You are in a library. A multitude of colorful books line the shelves."
	
	west = firstRoom
;

blankRoom: Room
	roomName = 'White Room'
	roomDesc = "The room is completely white, its sterile walls blending into the equally blank ceiling and floor."
	
	north = firstRoom
;

dungeon: Room
	roomName = 'Dungeon'
	roomDesc = "You stand in a dungeon cell. Cracks can be seen winding up the cobblestone wall. Some moss is growing near the ground."
	
	east = firstRoom
;


orangeButton: Button, Food
	name = 'orange button'
	vocabWords = 'orange round button'
	desc = "It's an orange colored button."
	location = library
;