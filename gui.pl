window_init:-   window(wmain, create,           [type(menu), coord(14, 25, 21, 40),            border(blue), contents(yellow),            menu(['Load',                  'Consult',                  'Explain',                  'Trace',                  'Quit'])]),    window(advice, create,          [type(display), coord(1, 1, 10, 78),            border(blue:white), contents(blue:white)]),    window(quest, create,          [type(display), coord(13, 10, 13, 70),            border(blue:white), contents(blue:white)]). 

go :-   repeat, 
window(wmain, read, X),      do(X),    fail.