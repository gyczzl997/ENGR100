% read the proj3.m
ORIGSOUND = audioread('proj3.wav');
ORIGSOUND = reshape(ORIGSOUND, 32768, 13, 4);
X = [];
% Low G, A flat, A, A#, B, C, D flat, D, D#, E, F, F#, G 
Var = [392 418 440 466 494 523 554 587 622 659 698 740 798];
Characters =['G '; 'G#'; 'A '; 'A#'; 'B '; 'C '; 'C#'; 'D '; 'D#'; 'E '; 'F '; 'F#'; 'G '];

Synthesizer2(ORIGSOUND, X, Var, Characters);

