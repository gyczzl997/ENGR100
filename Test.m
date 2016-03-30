function Synthesizer(ORIGSOUND, X, Var, Caharacters)

H = uicontrol('Style','Popup','Position',[500 250 100 50],'String','guitar|clarinet|trumpet|tone');

for i =  1:13
    for j = 1:3
        
        [height, width, node, color] = ButtonControl(Orig_height, j, i);
        if(j == 1)
            temp = uicontrol('Style','Pushbutton','Position',[width height 80 40],'String',Characters(i),'Callback', ...
                {@PressButton, i, j});
        elseif (j == 2)
            temp = uicontrol('Style','Pushbutton','Position',[width (height + 40) 80 40],'String','1/2','Callback', ...
                {@PressButton, i, j});
        else
            temp = uicontrol('Style','Pushbutton','Position',[width (height + 40 + 2) 80 40],'String','1/4','Callback', ...
                {@PressButton, i, j});
        end
        
        if (color == 'black')
            temp.BackgroundColor = [1 1 1];
            temp.ForegroundColor = [0 0 0];
        elseif(color == 'gray')
        else
            temp.BackgroundColor = [0 0 0];
            temp.ForegroundColor = [1 1 1];
        end
    end

%
% color: black, white and gray 
%
   function[height, node, color]= ButtonControl(Orig_height, Index, Character_index)
    if(Index == 1)
        node = 1;
        height = Orig_height;
    elseif(Index == 2)
        node = 2;
        height = Orig_height + height;
    elseif(Index == 3)
         node = 4;
         height = Orig_height + Orig_height * 2;
    end
    if (Index == 1 )
        if(Character_index ~= 2 && Character_index ~= 4 && Character_index ~= 7 && Character_index ~= 9 && Character_index ~= 11)
        color = 'white';
        else
        color = 'gray';
        end
    else
        color = 'black';
    end
    end

%
% var : This must be coorresponding to the indices of Var vector
%     : Input 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ,12 or 13 
% node : Represent the length of the node  
%      : Input 1, 2 or 4  
%        1. Whole 2. Half 4. Quoter
%
%
%
%

function PressButton(hObject, evt, var_in, node)
I = get(H,'Value');
if (I == 4)
    Z = cos(2 * pi * Var(var_in) * [1:32668]/7999);
    Z = [Z zeros(1,100)];
    Z = Z';
else
Z = ORIGSOUND(:,var_in,I);   
end

Z = Z /node;

X=[X Z];
soundsc(Z,44100);
clear Z;

end
end
