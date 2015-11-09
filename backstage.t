#include <adv3.h>

globvar: object
	
	asdf = 0
	str = 'a lowercase string in a global variable'
	
	show(voice)
	{
		say(voice);
		
		str = voice;
	}
;