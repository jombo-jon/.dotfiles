/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int gappx     = 2;        /* gaps between windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int gappih    = 10;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 10;       /* vert inner gap between windows */
static const unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 10;       /* vert outer gap between windows and screen edge */
static const int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static const int showbar            = True;        /* 0 means no bar */
static const int topbar             = True;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=8" };
static const char dmenufont[]       = "monospace:size=8";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#eeeeee";
static const char col_cyan[]        = "#005577";
static const char gruvbox_gray[]        = "#282828";
static const char gruvbox_white[]        = "#eadbb2";
static const char gruvbox_green[]        = "#689d69";
static const char gruvbox_light_green[]        = "#98971a";
static const char gruvbox_dark_green[]        = "#b8bb26";
static const char gruvbox_dark_yellow[]        = "#c4a000";
/* static const char *colors[][3]      = { */
/*     /1*               fg         bg         border   *1/ */
/*     [SchemeNorm] = { col_cyan, col_gray1, col_gray1 }, */
/*     [SchemeSel]  = { col_gray3, col_gray1,  col_gray3 }, */
/* }; */
static const char *colors[][3]      = {
    /*               fg         bg         border   */
    [SchemeNorm] = { gruvbox_green, gruvbox_gray, gruvbox_gray },
    [SchemeSel]  = { gruvbox_white, gruvbox_gray,gruvbox_white },
    /* [SchemeSel]  = { gruvbox_dark_yellow, col_gray1,  gruvbox_dark_yellow }, */
};

/* tagging */
/* static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }; */
static const char *tags[] = { "1", "2" , "", "", "", "" };

static const Rule rules[] = {
    /* xprop(1):
     *  WM_CLASS(STRING) = instance, class
     *  WM_NAME(STRING) = title
     */
    /* class            instance            title       tags mask   iscentered  isfloating  monitor */
    { "Spotify",        NULL,               NULL,       1 << 5,     0,          0,          -1 },
    { "TelegramDesktop","telegram-desktop", NULL,       1 << 2,     0,          0           -1 },
    { "Signal",         "signal",           NULL,       1 << 2,     0,          0,          -1 },
    { "KeePassXC" ,     "keepassxc",        NULL,       1 << 4,     0,          0,          -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
    /* symbol     arrange function */
    { "[]=",      tile },    /* first entry is default */
    { "><>",      NULL },    /* no layout function means floating behavior */
    { "|M|",	centeredmaster },		/* Master in middle, slaves on sides */
    { ">M>",	centeredfloatingmaster },	/* Same but master floats */
    { "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
    { MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
    { MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "st", NULL };
/* static const char *termcmd[]  = { "gnome-terminal", NULL }; */

/* Custom Modifier Keybindings */
static const char *rofiruncmd[] = {"rofi","-show","run",NULL};
static const char *flameshotcmd[] = {"flameshot","gui",NULL,NULL};
static const char *browser[] = {"firefox",NULL,NULL,NULL};
/* static const char *fileexplorer[] = {"gnome-terminal","-x","nnn",NULL}; */

static const char *upvol[]   = { "amixer", "set", "Master", "5%+",     NULL };
static const char *downvol[] = { "amixer", "set", "Master", "5%-",     NULL };
static const char *mutevol[] = { "amixer", "set", "Master", "toggle", NULL };

static Key keys[] = {
    /* modifier                     key        function        argument */
    { MODKEY|ShiftMask,             XK_p,      spawn,          {.v = dmenucmd } },
    { MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
    { MODKEY|ShiftMask,             XK_r,       spawn,        {.v = rofiruncmd } }, //  SHCMD("rofi -show run") },
    { MODKEY,                       XK_r,       spawn,        {.v = rofiruncmd } }, //  SHCMD("rofi -show run") },
    { MODKEY,                       XK_w,       spawn,        {.v = browser } },
    { MODKEY|ShiftMask,             XK_s,       spawn,          {.v =flameshotcmd} },
    
    { MODKEY,                       XK_b,      togglebar,      {0} },
    { MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
    { MODKEY,                       XK_k,      focusstack,     {.i = -1 } },

    { MODKEY,                       XK_v,      incnmaster,     {.i = +1 } },
    { MODKEY,                       XK_f,      incnmaster,     {.i = -1 } },
    
    { MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
    { MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
    { MODKEY|ShiftMask,             XK_Return, zoom,           {0} },
    { MODKEY,                       XK_Tab,    view,           {0} },
    { MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
    { MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
    { MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
    { MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
    
    /* { MODKEY,			            XK_e,		spawn,	        {.v = fileexplorer} }, /1* tile *1/ */
    
    { MODKEY,			            XK_y,		setlayout,	{.v = &layouts[0]} }, /* tile */
	{ MODKEY,		                XK_u,		setlayout,	{.v = &layouts[1]} }, /* float */
	{ MODKEY,			            XK_i,		setlayout,	{.v = &layouts[2]} }, /* Centeredmaster */
	{ MODKEY,			            XK_o,		setlayout,	{.v = &layouts[3]} }, /* CenteredFloating Master */
	{ MODKEY,		                XK_p,		setlayout,	{.v = &layouts[4]} }, /* monocle */

    { MODKEY,                       XK_space,  setlayout,      {0} },
    { MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },

    { MODKEY,                       XK_0,      view,           {.ui = ~0 } },
    { MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
    { MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
    { MODKEY,                       XK_period, focusmon,       {.i = +1 } },
    { MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
    { MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
    TAGKEYS(                        XK_1,                      0)
    TAGKEYS(                        XK_2,                      1)
    TAGKEYS(                        XK_3,                      2)
    TAGKEYS(                        XK_4,                      3)
    TAGKEYS(                        XK_5,                      4)
    TAGKEYS(                        XK_6,                      5)
    /* TAGKEYS(                        XK_s,                      5) */
    { MODKEY|ShiftMask,             XK_q,      quit,           {0} },
	{ MODKEY,                       XK_F6,    spawn,          {.v = upvol   } },
	{ MODKEY,                       XK_F5,    spawn,          {.v = downvol } },
	{ MODKEY,                       XK_F3,    spawn,          {.v = mutevol } },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
    /* click                event mask      button          function        argument */
    { ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
    { ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
    { ClkWinTitle,          0,              Button2,        zoom,           {0} },
    { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
    { ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
    { ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
    { ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
    { ClkTagBar,            0,              Button1,        view,           {0} },
    { ClkTagBar,            0,              Button3,        toggleview,     {0} },
    { ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
    { ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

