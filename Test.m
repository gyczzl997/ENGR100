X = [];
% Low G, A flat, A, A#, B, C, D flat, D, D#, E, F, F#, G 
Var = [392, 418, 440, 466, 494, 523, 554, 587, 622, 659, 698, 740, 798];

X = [];
%create low G key
lG = uicontrol('Style','Pushbutton','Position',[0 100 80 40],'String','G','Callback', ...
'Z=cos(2*pi*392*[1:32668]/7999);X=[X Z];sound(Z,7999);');

lG.BackgroundColor = [1 1 1];
lG.ForegroundColor = [0 0 0];

%create A key
A = uicontrol('Style','Pushbutton','Position',[80 100 80 40],'String','A','Callback', ...
'Z=cos(2*pi*440*[1:32668]/7999);X=[X Z];sound(Z,7999);');

A.BackgroundColor = [1 1 1];
A.ForegroundColor = [0 0 0];

%create B key
B = uicontrol('Style','Pushbutton','Position',[160 100 80 40],'String','B','Callback', ...
'Z=cos(2*pi*494*[1:32668]/7999);X=[X Z];sound(Z,7999);');

B.BackgroundColor = [1 1 1];
B.ForegroundColor = [0 0 0];

%create C key
C = uicontrol('Style','Pushbutton','Position',[240 100 80 40],'String','C','Callback', ...
'Z=cos(2*pi*523*[1:32668]/7999);X=[X Z];sound(Z,7999);');

C.BackgroundColor = [1 1 1];
C.ForegroundColor = [0 0 0];

%create D key
D = uicontrol('Style','Pushbutton','Position',[320 100 80 40],'String','D','Callback', ...
'Z=cos(2*pi*587*[1:32668]/7999);X=[X Z];sound(Z,7999);');

D.BackgroundColor = [1 1 1];
D.ForegroundColor = [0 0 0];

%create E key
E = uicontrol('Style','Pushbutton','Position',[400 100 80 40],'String','E','Callback', ...
'Z=cos(2*pi*659*[1:32668]/7999);X=[X Z];sound(Z,7999);');

E.BackgroundColor = [1 1 1];
E.ForegroundColor = [0 0 0];

%create F key
F = uicontrol('Style','Pushbutton','Position',[480 100 80 40],'String','F','Callback', ...
'Z=cos(2*pi*698*[1:32668]/7999);X=[X Z];sound(Z,7999);');

F.BackgroundColor = [1 1 1];
F.ForegroundColor = [0 0 0];

%create high G key
LG = uicontrol('Style','Pushbutton','Position',[560 100 80 40],'String','G','Callback', ...
'Z=cos(2*pi*798*[1:32668]/7999);X=[X Z];sound(Z,7999);');

LG.BackgroundColor = [1 1 1];
LG.ForegroundColor = [0 0 0];

%create 1/2 low G key
uicontrol('Style','Pushbutton','Position',[0 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*392*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 A key
uicontrol('Style','Pushbutton','Position',[80 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*440*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 B key
uicontrol('Style','Pushbutton','Position',[160 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*494*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 C key
uicontrol('Style','Pushbutton','Position',[240 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*523*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 D key
uicontrol('Style','Pushbutton','Position',[320 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*587*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 E key
uicontrol('Style','Pushbutton','Position',[400 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*659*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 F key
uicontrol('Style','Pushbutton','Position',[480 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*698*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 High G key
uicontrol('Style','Pushbutton','Position',[560 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*798*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/2 High G key
uicontrol('Style','Pushbutton','Position',[560 140 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*798*[1:16284]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 low G key
uicontrol('Style','Pushbutton','Position',[0 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*392*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 A key
uicontrol('Style','Pushbutton','Position',[80 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*440*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 B key
uicontrol('Style','Pushbutton','Position',[160 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*494*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 C key
uicontrol('Style','Pushbutton','Position',[240 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*523*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 D key
uicontrol('Style','Pushbutton','Position',[320 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*587*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 E key
uicontrol('Style','Pushbutton','Position',[400 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*659*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 F key
uicontrol('Style','Pushbutton','Position',[480 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*698*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 High G key
uicontrol('Style','Pushbutton','Position',[560 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*798*[1:5809200]/7999);X=[X Z];sound(Z,7999);');

%create 1/4 High G key
uicontrol('Style','Pushbutton','Position',[560 180 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*798*[1:8092]/7999);X=[X Z];sound(Z,7999);');

%create G sharp key
Gs = uicontrol('Style','Pushbutton','Position',[50 220 80 40],'String','G#','Callback', ...
'Z=cos(2*pi*418*[1:32668]/7999);X=[X Z];sound(Z,7999);');

Gs.BackgroundColor = [0 0 0];
Gs.ForegroundColor = [1 1 1];

%create 1/2 G sharp key
Gs = uicontrol('Style','Pushbutton','Position',[50 260 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*418*[1:16284]/7999);X=[X Z];sound(Z,7999);');

Gs.BackgroundColor = [0 0 0];
Gs.ForegroundColor = [1 1 1];

%create 1/4 G sharp key
Gs = uicontrol('Style','Pushbutton','Position',[50 300 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*418*[1:8092]/7999);X=[X Z];sound(Z,7999);');

Gs.BackgroundColor = [0 0 0];
Gs.ForegroundColor = [1 1 1];

%create A sharp key
As = uicontrol('Style','Pushbutton','Position',[130 220 80 40],'String','A#','Callback', ...
'Z=cos(2*pi*466*[1:32668]/7999);X=[X Z];sound(Z,7999);');

As.BackgroundColor = [0 0 0];
As.ForegroundColor = [1 1 1];

%create 1/2 A sharp key
As = uicontrol('Style','Pushbutton','Position',[130 260 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*466*[1:16284]/7999);X=[X Z];sound(Z,7999);');

As.BackgroundColor = [0 0 0];
As.ForegroundColor = [1 1 1];

%create 1/4 A sharp key
As = uicontrol('Style','Pushbutton','Position',[130 300 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*466*[1:8092]/7999);X=[X Z];sound(Z,7999);');

As.BackgroundColor = [0 0 0];
As.ForegroundColor = [1 1 1];

%create C sharp key
Cs = uicontrol('Style','Pushbutton','Position',[290 220 80 40],'String','C#','Callback', ...
'Z=cos(2*pi*554*[1:32668]/7999);X=[X Z];sound(Z,7999);');

Cs.BackgroundColor = [0 0 0];
Cs.ForegroundColor = [1 1 1];

%create 1/2 C sharp key
Cs = uicontrol('Style','Pushbutton','Position',[290 260 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*554*[1:16284]/7999);X=[X Z];sound(Z,7999);');

Cs.BackgroundColor = [0 0 0];
Cs.ForegroundColor = [1 1 1];

%create 1/4 C sharp key
Cs = uicontrol('Style','Pushbutton','Position',[290 300 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*554*[1:8092]/7999);X=[X Z];sound(Z,7999);');

Cs.BackgroundColor = [0 0 0];
Cs.ForegroundColor = [1 1 1];

%create D sharp key
Ds = uicontrol('Style','Pushbutton','Position',[370 220 80 40],'String','D#','Callback', ...
'Z=cos(2*pi*622*[1:32668]/7999);X=[X Z];sound(Z,7999);');

Ds.BackgroundColor = [0 0 0];
Ds.ForegroundColor = [1 1 1];

%create 1/2 D sharp key
Ds = uicontrol('Style','Pushbutton','Position',[370 260 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*622*[1:16284]/7999);X=[X Z];sound(Z,7999);');

Ds.BackgroundColor = [0 0 0];
Ds.ForegroundColor = [1 1 1];

%create 1/4 D sharp key
Ds = uicontrol('Style','Pushbutton','Position',[370 300 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*622*[1:8092]/7999);X=[X Z];sound(Z,7999);');

Ds.BackgroundColor = [0 0 0];
Ds.ForegroundColor = [1 1 1];

%create F# key
Fs = uicontrol('Style','Pushbutton','Position',[530 220 80 40],'String','F#','Callback', ...
'Z=cos(2*pi*740*[1:32668]/7999);X=[X Z];sound(Z,7999);');

Fs.BackgroundColor = [0 0 0];
Fs.ForegroundColor = [1 1 1];

%create 1/2 F# key
Fs = uicontrol('Style','Pushbutton','Position',[530 260 80 40],'String','1/2','Callback', ...
'Z=cos(2*pi*740*[1:16284]/7999);X=[X Z];sound(Z,7999);');

Fs.BackgroundColor = [0 0 0];
Fs.ForegroundColor = [1 1 1];

%create 1/4 F# key
Fs = uicontrol('Style','Pushbutton','Position',[530 300 80 40],'String','1/4','Callback', ...
'Z=cos(2*pi*740*[1:8092]/7999);X=[X Z];sound(Z,7999);');

Fs.BackgroundColor = [0 0 0];
Fs.ForegroundColor = [1 1 1];
