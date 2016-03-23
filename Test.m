X = [];
% Low G, A flat, A, A#, B, C, D flat, D, D#, E, F, F#, G 
Var = [392, 418, 440, 466, 494, 523, 554, 587, 622, 659, 698, 740, 798];




%create low G key
lG = uicontrol('Style','Pushbutton','Position',[0 100 80 40],'String','G','Callback', ...
'Z=cos(2*pi*392*[1:2000]/7999);X=[X Z];sound(Z,7999);');

%create A flat key
Ab = uicontrol('Style','Pushbutton','Position',[175 500 50 100],'String','Ab / G#','Callback', ...
'Z=cos(2*pi*418*[1:2000]/7999);X=[X Z];sound(Z,7999);');

%create A key
A = uicontrol('Style','Pushbutton','Position',[200 400 50 100],'String','A','Callback', ...
'Z=cos(2*pi*440*[1:2000]/7999);X=[X Z];sound(Z,7999);');

%create A sharp key
Bb = uicontrol('Style','Pushbutton','Position',[225 500 50 100],'String','Bb / A#','Callback', ...
'Z=cos(2*pi*466*[1:2000]/7999);X=[X Z];sound(Z,7999);');
