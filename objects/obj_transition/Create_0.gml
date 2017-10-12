/// @description Setting up the transition object
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiHeightHalf = guiHeight * 0.5;

enum TRANSITION_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
};

mode = TRANSITION_MODE.INTRO;
percent = 1;
target = room;