/// @description Setting up the menu

_width = TILE_SIZE * 4;
_optionsHeight = TILE_SIZE * 2;
_optionsPadding = TILE_SIZE / 2;

_optionsIndex = 0;
_options = ds_list_create();
ds_list_add(_options, "Resume");
ds_list_add(_options, "Quit");
_numOptions = ds_list_size(_options);
