//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/* {"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0}, */
	{"", "~/.config/suckless/dwmblocks/modules/wifi",	5,		0},
	{"", "~/.config/suckless/dwmblocks/modules/bluetooth",	10,		0},
	{"", "~/.config/suckless/dwmblocks/modules/volume",	5,		0},
	{"", "~/.config/suckless/dwmblocks/modules/battery",	5,		0},
	{"", "~/.config/suckless/dwmblocks/modules/date",	3600,		0},
	{"", "~/.config/suckless/dwmblocks/modules/time",	60,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
