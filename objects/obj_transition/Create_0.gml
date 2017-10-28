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
	INTRO,
    FINISHING_UP
};

mode = TRANSITION_MODE.INTRO;
percent = 1.2;
targetPercent = 1.2;
target = room;

// Put this on top of everything else
depth = -1000;