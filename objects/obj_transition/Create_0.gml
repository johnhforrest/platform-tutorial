/// @description Setting up the transition object
//_guiWidth = display_get_gui_width();
//_guiHeight = display_get_gui_height();
//_guiHeightHalf = _guiHeight * 0.5;

_mode = TRANSITION_MODE.INTRO;
//_percent = 1.2;
//_targetPercent = 1.2;
_target = room;

// Put this on top of everything else
depth = -1000;

enum TRANSITION_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
    FINISHING_UP
};